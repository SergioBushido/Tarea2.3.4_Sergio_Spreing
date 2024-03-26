package org.restjsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


@Controller
@EnableWebMvc
public class MainController {


	@GetMapping("/403")
	public String accessDenied() {
		return "/403";
	}

	@GetMapping("/")
	public String home() {
		return "index";
	}

}