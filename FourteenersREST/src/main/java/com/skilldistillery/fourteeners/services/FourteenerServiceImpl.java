package com.skilldistillery.fourteeners.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.fourteeners.entities.Fourteener;
import com.skilldistillery.fourteeners.repositories.FourteenerRepository;

@Service
public class FourteenerServiceImpl implements FourteenerService {

	@Autowired
	private FourteenerRepository repo;
	
	@Override
	public List<Fourteener> index() {
		return repo.findAll();
	}
}
