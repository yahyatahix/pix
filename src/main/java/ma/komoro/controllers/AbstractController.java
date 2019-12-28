package ma.komoro.controllers;

import ma.komoro.dao.*;
import ma.komoro.dao.ProfRepository;
//import ma.komoro.entities.Cart;
import ma.komoro.entities.Prof;
//import ma.komoro.services.CatalogService;
//import ma.komoro.DefaultCatalogService;
//import ma.komoro.services.TotalAmountCalculator;
//import ma.komoro.web.dto.HeaderDTOBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Optional;
//import ma.komoro.services.CatalogService;

@Controller
public abstract class AbstractController {
    
	@Autowired
    protected ProfRepository profRepo;


    //Insert necessary data to the header tag
    
    protected Prof getAuthenticatedCustomer(HttpSession session) {
        Integer profId = (Integer) session.getAttribute("auth");
        if (profId == null) {
            return null;
        }
        Optional<Prof> prof = profRepo.findById(profId);
        return prof.orElse(null);
    }

    protected boolean isProfAuthenticatedIn(HttpSession session) {
        return session.getAttribute("auth") != null;
    }

  

    private String getPath(HttpServletRequest request) {
        return request.getContextPath() + "/app";
    }

   



}
