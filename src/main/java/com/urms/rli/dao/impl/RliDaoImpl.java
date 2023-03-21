package com.urms.rli.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.rli.dao.RliDao;
import com.urms.rli.vo.RliVo;

@Repository("RliDao")
public class RliDaoImpl implements RliDao{

	@Autowired
	SqlSession sql;
	
	@Override
	public List<RliVo> list() {
		return sql.selectList("rli.getList");
	}
	
	@Override
	public List<RliVo> search(HashMap<String, String> searchInfo) {
		return sql.selectList("rli.getList",searchInfo);
	}

	@Override
	public List<RliVo> sysList(HashMap<String, String> param) {
		return sql.selectList("rli.getSysList", param);
	}


}
