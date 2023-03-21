package com.urms.ccm.controller;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.urms.ccm.service.CcmService;
import com.urms.ccm.vo.CcmVo;

@Controller
public class CodeController {

	@Autowired
	private CcmService ccmservice;

	@RequestMapping("/codeManage")
	public String codeManage(Model model) {
		
		List<CcmVo> codeTypeList = ccmservice.codeType();
		model.addAttribute("codeTypeList", codeTypeList);
		
		return "ccm/codeManage";
	}

	@RequestMapping(value = "/codeSearch", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView codeSearch(@RequestParam("code_info_type") String code_info_type) {
		
		List<CcmVo> codeList = ccmservice.searchList(code_info_type);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("codeList", codeList);
		mav.setViewName("ccm/codeManage");
		
		System.out.println(codeList);
		
		return mav;
	}
	
	@GetMapping("/codeInfo")
	public ModelAndView codeInfo(@RequestParam("type") String code_type) {

		List<CcmVo> voList = ccmservice.codeInfo(code_type);
		int num = voList.size();
		List<CcmVo> codeTypeList = ccmservice.codeType();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ccm/codeManage");
		mav.addObject("voList", voList);
		mav.addObject("codeTypeList", codeTypeList);
		mav.addObject("num", num);

		return mav;
	}
	
	@RequestMapping(value="/codeAdd", method=RequestMethod.POST )
	@ResponseBody
	public void codeAdd(@RequestParam(value="codeArray[]") List<String> codeArray) {
		HashMap<String, String> map = new HashMap<String,String>();
		
		/* addArray 배열을 공백을 기준으로 분리 및 mapper에 데이터를 넘기기 위한 String 배열 생성 및 map에 입력*/
		for (int i = 0; i < codeArray.size(); i++) { 
			
			String[] result = codeArray.get(i).split(" ");
			
			map.put("code_info_type", result[0]);
			map.put("code_type", result[1]);
			map.put("code_info_nm", result[2]);
			map.put("user_nm", result[3]);

			ccmservice.codeAdd(map);

			map.clear(); 
		}
	}

	@RequestMapping(value="/codeEdit", method=RequestMethod.POST)
	@ResponseBody
	public void codeEdit(@RequestParam(value="chkArray[]") List<String> chkArray) {

		HashMap<String, String> map = new HashMap<String,String>();
		
		/* chkArray 배열을 공백을 기준으로 분리 및 mapper에 데이터를 넘기기 위한 String 배열 생성 및 map에 입력*/
		for (int i = 0; i < chkArray.size(); i++) { 
			
			String[] result = chkArray.get(i).split(" ");
			
			map.put("code_info_type", result[0]);
			map.put("use_yn", result[1]);
			map.put("mod_nm", result[2]);

			ccmservice.codeEdit(map);

			map.clear(); 
		}
	}
}
