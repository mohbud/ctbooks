package com.trey.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.trey.demo.model.Book;

public interface BookRepo extends JpaRepository<Book, Integer>{
	List<Book> findByTechGreaterThan(int Tech);

	Book findByTech(int tech);

}
