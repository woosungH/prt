package com.urms.req.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.req.dao.ReqDao;
import com.urms.req.vo.ReqVo;
@Repository
public class ReqDaoImpl implements ReqDao {

	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<ReqVo> reqList(String id) {
		List<ReqVo> reqVo = sqlSession.selectList("req.reqList",id);
		return reqVo;
	}
	@Override
	public List<ReqVo> reqList2(String id) {
		List<ReqVo> reqVo2 = sqlSession.selectList("req.reqList2",id);
		return reqVo2;
	}

}
