package ma.komoro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ma.komoro.controllers.AbstractController;

import javax.servlet.http.Cookie;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class GeneralController extends AbstractController {
    @GetMapping(path = {"/", "home"})
    public String home(Model model, HttpServletRequest request, HttpServletResponse response) {
        
        return "index";
    }
}
