package com.trey.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Book {
	
	@Id
	private int id;
	private int tech;
	private float price;
	private String name;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getTech() {
		return tech;
	}


	public void setTech(int tech) {
		this.tech = tech;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return name+"\n"+"Price =" + price;
	}
	
	
}
