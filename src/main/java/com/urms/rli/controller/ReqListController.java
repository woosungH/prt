package com.urms.rli.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.urms.ccm.service.CcmService;
import com.urms.ccm.vo.CcmVo;
import com.urms.rli.service.RliService;
import com.urms.rli.vo.RliVo;

@Controller
public class ReqListController {

	@Autowired
	private RliService rliservice;

	@Autowired
	private CcmService ccmService;

	@RequestMapping(value = "/reqList", method = RequestMethod.GET)
	public ModelAndView reqList() {
		List<CcmVo> codeList = ccmService.codeList();

		// 페이징 처리 필요, 정렬 기능 추가 필요
		List<RliVo> reqList = rliservice.list();
		ModelAndView mav = new ModelAndView();
		mav.addObject("codeList", codeList);
		mav.addObject("reqList", reqList);
		mav.setViewName("rli/reqList");
		
		return mav;
	}
	
	@RequestMapping(value = "/reqList", method = RequestMethod.POST)
	@ResponseBody
	public void reqList(@RequestParam HashMap<String, String> param, HttpServletResponse rs) throws IOException {
		// 스크립트단에서 프로젝트명 찾아서 해당 프로젝트에 맞는 세부 시스템명 찾기
		System.out.println(param);
		List<RliVo> sysList = rliservice.sysList(param);
		param.clear();
		
		HashMap<String, String> map = new HashMap<>();
		JSONArray jsonArr = new JSONArray();
		for (int i = 0; i < sysList.size(); i++) {
			map.put("sys_info_nm", sysList.get(i).getSys_info_nm());
			map.put("sys_nm", sysList.get(i).getSys_nm());
			map.put("sys_use", sysList.get(i).getSys_use());
			map.put("sys_info_use", sysList.get(i).getSys_info_use());
			JSONObject jsonObj = new JSONObject(map);
			jsonArr.add(jsonObj);
		}
		rs.setContentType("application/json; charset=utf-8");
		PrintWriter out = rs.getWriter();
		out.print(jsonArr.toString());
		System.out.println(jsonArr);
		
	}
	
	@RequestMapping(value = "/reqSearch", method = RequestMethod.POST)
	public ModelAndView reqSearch(@RequestParam HashMap<String, String> searchInfo) {

		System.out.println("controller : "+searchInfo);
		List<RliVo> reqList = rliservice.search(searchInfo);
		List<CcmVo> codeList = ccmService.codeList();
		
		ModelAndView mav = new ModelAndView(); 
		mav.addObject("codeList", codeList); 
		mav.addObject("reqList", reqList); 
		mav.addObject("searchInfo",	searchInfo); 
		mav.setViewName("rli/reqList");
		 
		System.out.println(reqList);
		 
		return mav;
	}
}
