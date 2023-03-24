package com.urms.reqreg.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.urms.reqreg.dao.ReqRegDao;
import com.urms.reqreg.service.ReqRegService;

@Service
public class ReqRegServiceImpl implements ReqRegService {

	@Autowired
	private ReqRegDao reqRegDao;
	
	@Override
	public void reqRegSubmit(HashMap<String, Object> map) {
		reqRegDao.reqRegSubmit(map);
		
	}

}
