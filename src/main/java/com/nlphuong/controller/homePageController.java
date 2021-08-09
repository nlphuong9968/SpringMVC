package com.nlphuong.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nlphuong.entity.Director;
import com.nlphuong.entity.Employee;

@Controller
public class homePageController {
	
	//Cach 1
/*	@RequestMapping("/")
	public ModelAndView homePage() {
		ModelAndView viewHomePage = new ModelAndView();
		viewHomePage.setViewName("homePage");
		
		String username = "Nguyen Linh Phuong";
		String password = "123456";
		
		viewHomePage.addObject("username", 1);
		viewHomePage.addObject("password", password);
		
		return viewHomePage;

	}
*/
	//Cach 2
/*	@RequestMapping("/")
	public String homePage(ModelMap modelMap) {
		
		String username = "Nguyen Linh Phuong";
		String password = "123456";
		
		modelMap.addAttribute("username", username);
		modelMap.addAttribute("password", password);
		
		return "homePage";

	}
*/
	//Object, List
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String homePage(ModelMap modelMap) {	
		
		return "homePage";

	}
	
	@RequestMapping(path = "/detail", method = RequestMethod.POST)
	public String detail(@RequestParam("id") int id,@RequestParam("name") String name, ModelMap modelMap) {
		
		modelMap.addAttribute("id", id);
		modelMap.addAttribute("name", name);
		
		return "detailPage";

	}
}
