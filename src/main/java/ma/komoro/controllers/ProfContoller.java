package ma.komoro.controllers;

import ma.komoro.dao.ProfRepository;
import ma.komoro.entities.Prof;
import ma.komoro.web.dto.ProfForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller

public class ProfContoller  {

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
	protected ProfRepository profRepo;

    @GetMapping(path = {"/login", "login"})
    public String showLogin(Model model, HttpSession session, HttpServletRequest request) {
        if (isProfAuthenticatedIn(session)) {
            return "index";
        }
        
        return "login";
    }

    private boolean isProfAuthenticatedIn(HttpSession session) {
		// TODO Auto-generated method stub
		return false;
	}

	@PostMapping(path = "/login")
    public String login(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse RESPONSE) {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        Prof prof = profRepo.findByLogin(login);

        if (!userIsLoggedIn(password, prof)) {
            model.addAttribute("loginError", "login or password invalid!");
            return "login";
        }
        session.setAttribute("auth", prof.getId());
        if (shouldRedirectToOrderPage(request)) {
            return "redirect:" + "/app" + "/" + "/order/confirm";
        }
        return "redirect:home";
    }


    private boolean userIsLoggedIn(String password, Prof prof) {
        if (prof == null) {
            return false;
        }
        return passwordEncoder.matches(password, prof.getPassword());
    }

    private boolean shouldRedirectToOrderPage(HttpServletRequest request) {
        return request.getParameter("Referer".toLowerCase()).contains("/cart/read");
    }

    @GetMapping(path = "/register")
    public String register(Model model, HttpSession session, HttpServletRequest request) {
        if (isProfAuthenticatedIn(session)) {
            return "index";
        }
        
        model.addAttribute("profForm", new ProfForm());
        return "register-user";
    }

    @PostMapping(path = "/register")
    public String register(@Valid @ModelAttribute ProfForm profForm, BindingResult bindingResult, HttpSession session) {
        if (bindingResult.hasErrors()) {
            return "register-user";
        }
        Prof prof = profForm.toProfModel(passwordEncoder);
        profRepo.save(prof);
        authenticate(session, profForm);
        return "redirect:home";
    }

    @GetMapping(path = "/logout")
    public String logout(HttpServletResponse response, HttpSession session) {
        session.invalidate();
       
        return "redirect:home";
    }

    private void authenticate(HttpSession session, ProfForm profForm) {
        int profId = profRepo.findByLogin(profForm.getLogin()).getId();
        session.setAttribute("auth", profId);
    }
}


