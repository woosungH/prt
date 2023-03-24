package com.urms.rli.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.urms.rli.dao.RliDao;
import com.urms.rli.service.RliService;
import com.urms.rli.vo.RliVo;


@Service("RliService")
public class RliServiceImpl implements RliService{

	@Autowired
	RliDao rliDao;
	
	@Override
	public List<RliVo> list() {
		return rliDao.list();
	}
	
	@Override
	public List<RliVo> search(HashMap<String, String> searchInfo) {
		System.out.println("Service Impl : "+searchInfo);
		return rliDao.search(searchInfo);
	}

	@Override
	public List<RliVo> sysList(HashMap<String, String> param) {
		return rliDao.sysList(param);
	}


}
