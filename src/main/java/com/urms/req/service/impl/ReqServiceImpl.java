package com.urms.req.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.urms.poi.vo.PoiVo;
import com.urms.req.dao.ReqDao;
import com.urms.req.service.ReqService;
import com.urms.req.vo.ReqVo;
@Service
public class ReqServiceImpl implements ReqService {

	@Autowired
	private ReqDao reqDao;
	@Override
	public List<ReqVo> reqList(String id) {
		List<ReqVo> reqVo = reqDao.reqList(id);
		return reqVo;
	}
	@Override
	public List<ReqVo> reqList2(String id) {
		List<ReqVo> reqVo2 = reqDao.reqList2(id);
		return reqVo2;
	}
	@Override
	public int reqCount() {
		int count = reqDao.reqCount();
		return count;
	}
	@Override
	public int reqNoCount() {
		int req_no_count = reqDao.reqNoCount();
		return req_no_count;
	}
	@Override
	public int reqYesCount() {
		int req_yes_count = reqDao.reqYesCount();
		return req_yes_count;
	}
	@Override
	public List<ReqVo> reportList(HashMap<String, Object> map) {
		List<ReqVo> reqVo = reqDao.reportList(map);
		return reqVo;
	}
	@Override
	public List<ReqVo> search(HashMap<String, Object> map) {
		List<ReqVo> reqVo = reqDao.search(map);
		return reqVo;
	}
	@Override
	public List<ReqVo> excelDown(HashMap<String, Object> map) {
		List<ReqVo> vo = reqDao.excelDown(map);
		return vo;
	}

}
