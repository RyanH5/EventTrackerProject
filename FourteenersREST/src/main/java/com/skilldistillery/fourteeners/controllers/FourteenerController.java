package com.skilldistillery.fourteeners.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.skilldistillery.fourteeners.entities.Fourteener;
import com.skilldistillery.fourteeners.services.FourteenerService;

@RestController
@RequestMapping("api")
public class FourteenerController {
	@Autowired
	private FourteenerService svc;

	@GetMapping("ping")
	public String getPong() {
		return "pong";
	}
	
	@GetMapping("fourteeners")
	public List<Fourteener> getAllFourteeners() {
		return svc.index();
	}
}
