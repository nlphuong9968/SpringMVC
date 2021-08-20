package com.nlphuong.entity;

import java.util.Set;

import javax.persistence.*;

@Entity(name = "Employee")
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idEmp;
	private String name;
	private int age;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "idEmp")
	private Set<Product> products;
	
	public Employee() {
		
	}
	
	public Employee(String name, int age) {
		super();
		this.name = name;
		this.age = age;
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

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}
