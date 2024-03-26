package org.restjsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
@RequestMapping("/api/v1")
public class CodeController {
    
    @GetMapping("/codes")
    public String getCodes() {
        // This method would ideally interact with a service to retrieve code entities
        // and then add them to a model before returning the view name.
        // As a simple placeholder, it directly returns the view name "codes".
        return "codes"; // This should be the name of a view that displays code entities.
    }

}