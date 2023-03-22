package com.urms.log.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.urms.log.service.LogService;
import com.urms.log.vo.UserVo;

@Controller
public class LogController {

	@Autowired
	private LogService logService;
	
	@RequestMapping("/login")
	public String login() {
		return "log/login";
	}
	
	@RequestMapping("/loginProcess")
	public  String   loginProcess(
		HttpSession     session,
		@RequestParam   HashMap<String, Object> map, Model model) {
		
		String returnURL = "";
		if( session.getAttribute("login") != null ) {
			session.removeAttribute("login"); 
		}
		
		UserVo  vo  = logService.login( map );
		
		if (vo !=null) {
			session.setAttribute("login", vo);
			session.setAttribute("id", vo.getUser_id());
			System.out.println(session.getAttribute("login"));
			if(vo.getMod_dttm() == null || vo.getMod_dttm().equals("")) {
				returnURL = "log/userMod";       // 최초로그인
			}else {
				returnURL = "redirect:/";       // 로그인 성공
			}
		} else {
			returnURL = "redirect:/login";	 // 로그인 실패시
		}
		return returnURL;	
	}
	
	@GetMapping("/userMod")
	public String userMod() {
		return "log/userMod";
	}
	
	@PostMapping("/userMod")
	public String userMod( HttpSession session,
			 @RequestParam HashMap<String, Object> map ) { 
		String id = (String)session.getAttribute("id"); 
		map.put("user_id", id);
		System.out.println("controller map : "+map);
		logService.updateUser(map); 
		return "redirect:/login"; 
    }
	
	/*
	 * @GetMapping("/userMod") public String userMod( HttpSession session,
	 * 
	 * @RequestParam HashMap<String, Object> map ) { String id =
	 * (String)session.getAttribute("id"); map.put("user_id", id);
	 * logService.updateUser(map); return "redirect:/login"; }
	 */
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView("redirect:/");
		
		return mav;
	}
}
