package com.skilldistillery.fourteeners.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public List<Fourteener> getAllFourteeners(HttpServletRequest req, HttpServletResponse resp) {
		List<Fourteener> fourteeners = svc.index();
		if (fourteeners == null) {
			resp.setStatus(404);
		}
		return fourteeners;
	}
	
	@GetMapping("fourteeners/{id}")
	public Fourteener getFourteener(@PathVariable("id") int id, HttpServletRequest req, HttpServletResponse resp) {
		Fourteener mtn = svc.show(id);
		if (mtn == null) {
			resp.setStatus(404);
		}
		
		return mtn;
	}
}
