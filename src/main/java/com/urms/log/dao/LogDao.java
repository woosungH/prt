package com.urms.log.dao;

import java.util.HashMap;

import com.urms.log.vo.UserVo;

public interface LogDao {

	UserVo login(HashMap<String, Object> map);

	void updateUser(HashMap<String, Object> map);

}
