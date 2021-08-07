package com.nlphuong.entity;

import java.util.List;
import java.util.Map;
import java.util.Properties;

public class Employee {

	String name;
	String address;
	int age;
	Director dir;
	List<Director> list;
	Map<String, Object> map;
	Properties properties;

	public Employee() {

	}
	
	public Employee(Director dir) {
		this.dir = dir;
	}

	public Employee(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public Employee(String name, int age, String address) {

		this.name = name;
		this.age = age;
		this.address = address;
	}
	
//	public  Employee createEmployee() {
//		Employee emp = new Employee();
//		emp.setName("ABC");
//		return emp;
//	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Director getDir() {
		return dir;
	}

	public void setDir(Director dir) {
		this.dir = dir;
	}

//	public List<String> getList() {
//		return list;
//	}
//
//	public void setList(List<String> list) {
//		this.list = list;
//	}
	
	public List<Director> getList() {
		return list;
	}

	public void setList(List<Director> list) {
		this.list = list;
	}
	
	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public Properties getProperties() {
		return properties;
	}

	public void setProperties(Properties properties) {
		this.properties = properties;
	}

	public void getNotify() {
		System.out.println("Hello, this is notify from employee " + name + age + address);
	}

}
