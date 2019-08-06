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
	public List<Fourteener> getAll(HttpServletRequest req, HttpServletResponse resp) {
		List<Fourteener> fourteeners = svc.index();
		if (fourteeners == null) {
			resp.setStatus(404);
		}
		return fourteeners;
	}
	
	@GetMapping("fourteeners/{id}")
	public Fourteener get(@PathVariable("id") int id, HttpServletRequest req, HttpServletResponse resp) {
		Fourteener mtn = svc.show(id);
		if (mtn == null) {
			resp.setStatus(404);
		}
		
		return mtn;
	}
	
	@DeleteMapping("fourteeners/{id}")
	public Boolean deleteFourteener(@PathVariable Integer id, HttpServletRequest req, HttpServletResponse resp) {
		try {
			svc.delete(id);
			return true;
		}	catch (Exception e) {
			resp.setStatus(404);
			return false;
		}
	}
	
	@PostMapping("fourteeners")
	public Fourteener createFourteener(@RequestBody Fourteener fourteener, HttpServletRequest req, HttpServletResponse resp) {
		try {
			System.out.println(fourteener);
			svc.create(fourteener);
			System.out.println(fourteener);
			
			resp.setStatus(201);
			StringBuffer url = req.getRequestURL();
			url.append("/");
			url.append(fourteener.getId());
			String newAddrURL = url.toString();
			resp.addHeader("Location", newAddrURL);
		}	catch (Exception e) {
			resp.setStatus(400);
			fourteener = null;
		}
		
		return fourteener;
	}
	
	@PutMapping("fourteeners/{id}")
	public Fourteener replace(@PathVariable("id") int id, @RequestBody Fourteener mtn, HttpServletRequest req, HttpServletResponse resp) {
		try {
			mtn = svc.update(id, mtn);
			StringBuffer url = req.getRequestURL();
			String newAddrURL = url.toString();
			resp.addHeader("URL", newAddrURL);
		}	catch (Exception e) {
			resp.setStatus(404);
			
		}
		return mtn;
	}
}
