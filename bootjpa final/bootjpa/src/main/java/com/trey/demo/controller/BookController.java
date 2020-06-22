package com.trey.demo.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.trey.demo.dao.BookRepo;
import com.trey.demo.model.Book;

@RestController
public class BookController {
	
	@Autowired
	BookRepo repo;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("homepage.html");
		return mv;
	}
	
	@RequestMapping("/getBook")
	public ModelAndView getBook() {
		ModelAndView mv = new ModelAndView("cart2.jsp");
		List<Book> bookList = repo.findByTechGreaterThan(000);
		System.out.println(bookList);
		List<String> bookNames = new ArrayList<String>();
		List<Float> bookPrices = new ArrayList<Float>();
		float total = 0;
		DecimalFormat dec = new DecimalFormat("#.##");
		for (int i=0; i<bookList.size(); i++) {
			Book toProcess = bookList.get(i);
			bookNames.add(toProcess.getName());
			bookPrices.add(toProcess.getPrice());
			total += toProcess.getPrice();
		}
		if (bookList.size() < 10) {
			for (int i=bookList.size(); i <10; i++)
			bookNames.add("Empty position");
		}
		String totalString = dec.format(total);
		mv.addObject("bookList", bookList);
		System.out.println(bookNames);
		mv.addObject("bookNames", bookNames);
		mv.addObject("bookPrices", bookPrices);
		mv.addObject("totalString", totalString);
		return mv;
	}
	
	@RequestMapping("/checkout")
	public ModelAndView checkout() {
		ModelAndView mv = new ModelAndView("checkout2.jsp");
		List<Book> bookList = repo.findByTechGreaterThan(000);
		List<String> bookNames = new ArrayList<String>();
		List<Float> bookPrices = new ArrayList<Float>();
		System.out.println(bookList);
		float total = 0;
		DecimalFormat dec = new DecimalFormat("#.##");
		for (int i=0; i<bookList.size(); i++) {
			Book toProcess = bookList.get(i);
			bookNames.add(toProcess.getName());
			bookPrices.add(toProcess.getPrice());
			total += toProcess.getPrice();
		}
		String totalString = dec.format(total);
		mv.addObject("bookList", bookList);
		System.out.println(bookNames);
		mv.addObject("bookNames", bookNames);
		mv.addObject("bookPrices", bookPrices);
		mv.addObject("totalString", totalString);
		System.out.println(bookPrices);
		return mv;
	}
	
	@RequestMapping("/thank-you")
	public ModelAndView thankyou() {
		ModelAndView mv = new ModelAndView("thank-you.jsp");
		List<Book> bookList = repo.findByTechGreaterThan(000);
		List<String> bookNames = new ArrayList<String>();
		List<Float> bookPrices = new ArrayList<Float>();
		System.out.println(bookList);
		float total = 0;
		DecimalFormat dec = new DecimalFormat("#.##");
		for (int i=0; i<bookList.size(); i++) {
			Book toProcess = bookList.get(i);
			bookNames.add(toProcess.getName());
			bookPrices.add(toProcess.getPrice());
			total += toProcess.getPrice();
		}
		String totalString = dec.format(total);
		mv.addObject("bookList", bookList);
		System.out.println(bookNames);
		mv.addObject("bookNames", bookNames);
		mv.addObject("bookPrices", bookPrices);
		mv.addObject("totalString", totalString);
		System.out.println(bookPrices);
		repo.deleteAll();
		return mv;
	}
	
	@RequestMapping("/getBookDBtest")
	public List<Book> obtainBook(){
		return repo.findAll();
	}
	
	@RequestMapping(value = {"/deleteBook/{tech}"})
	public ModelAndView deleteBook(@PathVariable int tech) {
		System.setProperty("server.servlet.context-path", "/");
		ModelAndView mv2 = new ModelAndView();
		mv2.setViewName("cart2.jsp");
		List<Book> bookList = repo.findByTechGreaterThan(000);
		Book a = repo.findByTech(tech);
		repo.delete(a);
		if (tech < 10) {
		for (int i=tech+1; i<=5; i++)
		{
			Book b = repo.findByTech(i);
			b.setTech(i-1);
			repo.save(b);
		}
		}
		bookList = repo.findByTechGreaterThan(000);
		mv2.addObject(bookList);
		return mv2;
	}
	
	@RequestMapping(path = {"/cartBook"})
	public ModelAndView cartBook() {
		System.setProperty("server.servlet.context-path", "/");
		ModelAndView mv2 = new ModelAndView();
		mv2.setViewName("cart2.jsp");
		Book a = new Book();
		List<Book> bookList = repo.findByTechGreaterThan(000);
		int numberBooks = bookList.size();
		int lastId = bookList.get(numberBooks-1).getId();
		a.setId(lastId+1);
		a.setName("Gillette Castle A History Landmarks");
		a.setPrice((float) 19.99);
		a.setTech(numberBooks+1);
		repo.save(a);
		bookList = repo.findByTechGreaterThan(000);
		mv2.addObject(bookList);
		return mv2;
	}
	
	@RequestMapping(path = {"/cartBookUrl/{name}/{price}"})
	public ModelAndView cartBookUrl(@PathVariable("name") String name, @PathVariable("price") float price) {
		System.setProperty("server.servlet.context-path", "/");
		ModelAndView mv2 = new ModelAndView();
		mv2.setViewName("cart2.jsp");
		Book a = new Book();
		List<Book> bookList = repo.findByTechGreaterThan(000);
		int numberBooks = bookList.size();
		int lastId;
		if (numberBooks >0) {
		lastId = bookList.get(numberBooks-1).getId();
		}
		else {
			lastId = 0;
		}
		a.setId(lastId+1);
		a.setName(name);
		a.setPrice(price);
		a.setTech(numberBooks+1);
		repo.save(a);
		bookList = repo.findByTechGreaterThan(000);
		mv2.addObject(bookList);
		return mv2;
	}
	
	
	@DeleteMapping("/deleteBookUrl/{tech}")
	public ModelAndView deleteBookFromUrl(@PathVariable int tech) {
		ModelAndView mv = new ModelAndView("cart2.jsp");
		Book a = repo.getOne(tech);
		repo.delete(a);
		return mv;
	}
	
	@PostMapping("/addBookToCart")
	public Book addBook(Book book) {
		repo.save(book);
		return book;
	}
}
