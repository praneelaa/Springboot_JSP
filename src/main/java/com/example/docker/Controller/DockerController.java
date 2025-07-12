package com.example.docker.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class DockerController {
	@GetMapping("/home")
	  public String home() {
		return "home";
	}

}
