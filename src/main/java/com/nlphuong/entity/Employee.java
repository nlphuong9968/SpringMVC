package com.nlphuong.entity;

import javax.persistence.*;

@Entity(name = "Employee")
public class Employee {
	
	@Id
	int idEmp;
	String name;
	int age;
	
	public Employee() {
		
	}
	
	public int getIdEmp() {
		return idEmp;
	}
	public void setIdEmp(int idEmp) {
		this.idEmp = idEmp;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

}
