package com.krishna.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class HomeController {



	@RequestMapping("home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");

		//mv.addObject("username", "");

		return mv;
	}

	@RequestMapping("/")
	public ModelAndView Default() {
		ModelAndView mv = new ModelAndView("index");

		//mv.addObject("username", "");

		return mv;
	}




}
