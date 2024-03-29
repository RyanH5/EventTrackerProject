package com.skilldistillery.fourteeners.services;

import java.util.List;
import java.util.Optional;

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
	
	@Override
	public Fourteener show(int id) {
		Optional<Fourteener> opt = repo.findById(id);
		if (opt.isPresent()) {
			return opt.get();
		}
		return null;

	}
	
	@Override
	public Fourteener update(int id, Fourteener mtn) {
		Optional<Fourteener> opt = repo.findById(id);
		Fourteener managedFourteener = null;
		if (opt.isPresent() ) {
			managedFourteener = opt.get();
			managedFourteener.setComplete(mtn.isComplete());
			managedFourteener.setElevation(mtn.getElevation());
			managedFourteener.setPeak(mtn.getPeak());
			managedFourteener.setMtnRange(mtn.getMtnRange());
			managedFourteener.setRank(mtn.getRank());
		
			return repo.saveAndFlush(opt.get());
		}
		return null;
	}
	
	@Override
	public Fourteener create(Fourteener ft) {
//		ft.setComplete(false);
		return repo.saveAndFlush(ft);
		
	}
	
	
	@Override
	public Boolean delete(Integer id) {
		Optional<Fourteener> opt = repo.findById(id);
		Fourteener managedFt = null;
		if (opt.isPresent()) {
			managedFt = opt.get();
			repo.delete(managedFt);
			return true;
		}
		
		return false;
 	}
	
}
