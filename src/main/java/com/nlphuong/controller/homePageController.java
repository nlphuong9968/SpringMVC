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
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	//RequestParam
/*	@RequestMapping(path = "/detail", method = RequestMethod.POST)
	public String detail(@RequestParam("id") int id,@RequestParam("name") String name, ModelMap modelMap) {
		
		modelMap.addAttribute("id", id);
		modelMap.addAttribute("name", name);
		
		return "detailPage";

	}
*/
	//PathVariable
/*	@RequestMapping("/detail/{id}/{name}/{date}")
	public String detail(@PathVariable("id") int id,@PathVariable("name") String name,@PathVariable("date") String date, ModelMap modelMap) {
		
		modelMap.addAttribute("id", id);
		modelMap.addAttribute("name", name);
		modelMap.addAttribute("date", date);
		
		return "detailPage";

	}
*/
	//MatrixVariable
	///detail/123;name=macbook,samsung;date=27-09-2021;name=asus
	@RequestMapping(path = "/detail/{id}", method = RequestMethod.GET)
	public String getDetail(@PathVariable int id,@MatrixVariable String name, @MatrixVariable String date, ModelMap modelMap) {
		
		modelMap.addAttribute("id", id);
		modelMap.addAttribute("name", name);
		modelMap.addAttribute("date", date);
		
		return "detailPage";

	}
	
	//Post
	@RequestMapping(path = "/detail", method = RequestMethod.POST)
	public String postdDetail(@RequestParam String name,@RequestParam int id, ModelMap modelMap) {
		
		modelMap.addAttribute("id", id);
		modelMap.addAttribute("name", name);
		//modelMap.addAttribute("date", date);
		
		return "detailPage";
	}
}
