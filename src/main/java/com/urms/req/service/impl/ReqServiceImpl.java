package com.urms.req.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
