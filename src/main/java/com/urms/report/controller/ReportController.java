package com.urms.report.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.urms.req.service.ReqService;
import com.urms.req.vo.ReqVo;

@Controller
public class ReportController {
	@Autowired
	private ReqService reqService;
	
	
	@RequestMapping("/report")
	public ModelAndView report(
			HttpSession Session,
			@RequestParam HashMap<String, Object> map) {
		List<ReqVo> reqVo = reqService.reportList(map);
		ModelAndView mv = new ModelAndView();
		String searchYtype = (String)map.get("searchYtype");
		String searchMtype = (String)map.get("searchMtype");
		if(map.size() > 0) {
			mv.addObject("report",map.get("report1"));
		}else {
			mv.addObject("report",reqVo);
		}
		mv.addObject("searchYtype",searchYtype);
		mv.addObject("searchMtype",searchMtype);
		System.out.println(" map :" +map);
		System.out.println(" searchYtype :" +(String)map.get("searchYtype"));
		System.out.println(" searchMtype :" +(String)map.get("searchMtype"));
		mv.setViewName("report/report");
		return mv;
	}
	
	@RequestMapping("/report/search")
	public ModelAndView reportSearch(
			HttpSession Session,
			@RequestParam HashMap<String, Object> map,
			RedirectAttributes redirectAttributes) {
		List<ReqVo> reqVo = reqService.search(map);
		ModelAndView mv = new ModelAndView();
		mv.addObject("report",reqVo);
		mv.addObject("map",map);
		String searchYtype = (String)map.get("searchYtype");
		String searchMtype = (String)map.get("searchMtype");
		redirectAttributes.addAttribute("report1", reqVo);
		System.out.println("red map :" +map);
		System.out.println("red searchYtype :" +(String)map.get("searchYtype"));
		System.out.println("red searchMtype :" +(String)map.get("searchMtype"));
		mv.setViewName("redirect:/report?searchYtype="+searchYtype+"&searchMtype="+searchMtype);
		return mv;
	}
	
	@RequestMapping("/excel_popup")
	public ModelAndView excel_popup(
			HttpSession Session,
			@RequestParam HashMap<String, Object> map) {
		String req = (String)map.get("req_dt");
		ModelAndView mv = new ModelAndView();
		mv.addObject("req_dt",req);
		mv.setViewName("report/excel_popup");
		return mv;
	}
}
