package com.urms.req.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.poi.vo.PoiVo;
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
	@Override
	public int reqCount() {
		int count = sqlSession.selectOne("req.reqCount");
		return count;
	}
	@Override
	public int reqNoCount() {
		int req_no_count = sqlSession.selectOne("req.req_no_count");
		return req_no_count;
	}
	@Override
	public int reqYesCount() {
		int req_yes_count = sqlSession.selectOne("req.req_yes_count");
		return req_yes_count;
	}
	@Override
	public List<ReqVo> reportList(HashMap<String, Object> map) {
		List<ReqVo> reqVo = sqlSession.selectList("req.req_report_list");
		return reqVo;
	}
	@Override
	public List<ReqVo> search(HashMap<String, Object> map) {
		List<ReqVo> reqVo = sqlSession.selectList("req.req_report_search",map);
		return reqVo;
	}
	@Override
	public List<ReqVo> excelDown(HashMap<String, Object> map) {
		List<ReqVo> vo = sqlSession.selectList("req.excelDown",map);
		return vo;
	}
	
}
