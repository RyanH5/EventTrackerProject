package com.skilldistillery.fourteeners.controllers;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api")
public class FourteenerController {

	@GetMapping("ping")
	public String getPong() {
		return "pong";
	}
}
