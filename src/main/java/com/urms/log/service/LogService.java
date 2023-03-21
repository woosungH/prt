package com.urms.log.service;

import java.util.HashMap;

import com.urms.log.vo.UserVo;

public interface LogService {

	UserVo login(HashMap<String, Object> map);

	void updateUser(HashMap<String, Object> map);

}
