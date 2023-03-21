package com.urms.home.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.urms.req.service.ReqService;
import com.urms.req.vo.ReqVo;

@Controller
public class HomeController {
	@Autowired
	private ReqService reqService;

	@RequestMapping("/")
	public ModelAndView home(
			HttpSession Session,
			@RequestParam HashMap<String, Object> map
			) {
		String id = (String)Session.getAttribute("id");
		map.put("user", id);
		List<ReqVo> reqVo = reqService.reqList(id);
		List<ReqVo> reqVo2 = reqService.reqList2(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo",reqVo);
		mv.addObject("vo2",reqVo2);
		mv.setViewName("home");
		
		return mv;
	}
}
