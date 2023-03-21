package com.urms.log.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.log.dao.LogDao;
import com.urms.log.vo.UserVo;

@Repository
public class LogDaoImpl implements LogDao {

	@Autowired
	private SqlSession sql;
	@Override
	public UserVo login(HashMap<String, Object> map) {

		UserVo login = sql.selectOne("Log.login",map);
		return login;
	}
	@Override
	public void updateUser(HashMap<String, Object> map) {
		sql.update("Log.update", map);
	}

}
