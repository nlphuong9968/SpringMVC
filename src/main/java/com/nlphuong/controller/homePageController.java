package com.nlphuong.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import java.util.Map.Entry;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nlphuong.entity.Director;
import com.nlphuong.entity.Employee;

@Controller
public class homePageController {
	
	@RequestMapping("/")
	@ResponseBody
	public String homePage() {
		ApplicationContext context = new ClassPathXmlApplicationContext("minishop-IoC.xml");
		Employee employee = (Employee) context.getBean("employee");
		
//		System.out.println(employee.getDir().getName()+"-"+employee.getDir().getAge()+"-"+employee.getDir().getPosition());
//		employee.getNotify();
		//List
//		for(Director value : employee.getList()) {
//			System.out.println(value.getName());
//		}
		//Map
//		Director dir = (Director) employee.getMap().get("key2");
//		System.out.println(dir.getName());
		
//		for(Entry<String, Object> entry : employee.getMap().entrySet()) {
//			System.out.println(entry.getKey() + "-"+entry.getValue());
//		}
//		
//		String jdbc = employee.getProperties().getProperty("jdbc");
//		System.out.println(jdbc);
		
		//Resource resource = context.getResource("classpath:data.txt");
		
//		CustomLoader customLoader = new CustomLoader();
//		customLoader.setResourceLoader(context);
		
		CustomLoader customLoader = (CustomLoader) context.getBean("customLoader");
		
		Resource resource = customLoader.getResource("http://api.plos.org/search?q=title:DNA");
		
		try {
			InputStream  inputStream = resource.getInputStream();
			InputStreamReader reader = new InputStreamReader(inputStream);
			BufferedReader bufferedReader = new BufferedReader(reader);
			String line = "";
			StringBuilder data = new StringBuilder();
			while((line = bufferedReader.readLine())!= null) {
				data.append(line+"\n");
			}
			
			bufferedReader.close();
			reader.close();
			inputStream.close();
			
			System.out.println("Gia tri: " + data.toString());
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		((ClassPathXmlApplicationContext)context).close();
		return "abc";
	}

}
