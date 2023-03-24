package com.urms.reqreg.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.urms.ccm.service.CcmService;
import com.urms.ccm.vo.CcmVo;
import com.urms.reqreg.service.ReqRegService;


@Controller
public class ReqRegController {
	
	@Autowired
	private CcmService ccmService;
	
	@Autowired
	private ReqRegService reqRegService; 
	
	@RequestMapping("/reqReg")
	public ModelAndView reqReg(
			@RequestParam HashMap<String, Object> map,
						  HttpSession session) {
		List<CcmVo> codeList = ccmService.codeList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("codeList", codeList);
		mv.setViewName("reqReg/reqReg");
		return mv;
	}
	
	@RequestMapping("/reqRegSubmit")
	public ModelAndView reqRegSubmit(
			@RequestParam HashMap<String, Object>map,
						  HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String user_id = (String)session.getAttribute("user_id");
		String user_type = (String)session.getAttribute("user_type");
		String user_nm = (String)session.getAttribute("user_nm");
		map.put("user_id", user_id);
		map.put("user_type", user_type);
		map.put("user_nm", user_nm);
		System.out.println("reqReg map : " + map);
		reqRegService.reqRegSubmit(map);
		mv.setViewName("redirect:/reqList");
		return mv;
	}
}
