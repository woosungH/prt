package com.urms.log.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.urms.log.dao.LogDao;
import com.urms.log.service.LogService;
import com.urms.log.vo.UserVo;

@Service
public class LogServiceImpl implements LogService {

	@Autowired
	private LogDao logDao;
	
	@Override
	public UserVo login(HashMap<String, Object> map) {

		UserVo login = logDao.login(map);
		return login;
	}

	@Override
	public void updateUser(HashMap<String, Object> map) {
		System.out.println("ser map :" + map);
		logDao.updateUser(map);
	}

}
