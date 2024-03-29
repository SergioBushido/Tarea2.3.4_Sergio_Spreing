package org.restjsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
@RequestMapping("/api/v1")
public class TagController {
	
	@GetMapping("/tag")
	public String getTag() {
		return "tag";
	}


}
