package com.angularjs.suhee.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Part1Controller {

	private static final Logger logger = LoggerFactory.getLogger(Part1Controller.class);
	
	@RequestMapping(value = "/part1", method = RequestMethod.GET)
	public String getHomeView() {
		logger.debug("======================================================");
		logger.debug("==================== getHomeView =====================");
		logger.debug("======================================================");
		
		return "part1/index";
	}
	
}
