package com.skilldistillery.fourteeners.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skilldistillery.fourteeners.entities.Fourteener;

public interface FourteenerRepository extends JpaRepository<Fourteener, Integer>{

}
