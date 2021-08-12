package com.nlphuong.entity;

public class Director extends Employee{
	String position;
	
	public Director() {
		
	}

	public Director(String position,String name, int age) {
		super(name, age);
		this.position = position;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}
}
