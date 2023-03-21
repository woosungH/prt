package com.urms.req.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReqController {
	@RequestMapping("/srReq")
	public ModelAndView srReq(
			@RequestParam HashMap<String, Object> map,
			 HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("srReq/req");
		return mv;
	}

}
