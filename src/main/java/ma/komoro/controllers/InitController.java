package ma.komoro.controllers;


import ma.komoro.services.ProfInitializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class InitController {
    
    @Autowired
    private ProfInitializer profInitializer;

    @GetMapping(path = "/init")
    @ResponseBody
    public String init(){
        
        profInitializer.init();
        return "Initialization succeeded!";
    }
}
