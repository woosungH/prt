package com.urms.reqreg.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.reqreg.dao.ReqRegDao;

@Repository
public class ReqRegDaoImpl implements ReqRegDao {

	@Autowired
	private SqlSession sqlsession;
	@Override
	public void reqRegSubmit(HashMap<String, Object> map) {
		sqlsession.insert("reqReg.reqRegSubmit",map);
	}

}
