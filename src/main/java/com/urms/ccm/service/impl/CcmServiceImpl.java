package com.urms.ccm.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.urms.ccm.dao.CcmDao;
import com.urms.ccm.service.CcmService;
import com.urms.ccm.vo.CcmVo;

@Service("CcmService")
public class CcmServiceImpl implements CcmService{

	@Autowired
	CcmDao ccmDao;
	
	@Override
	public List<CcmVo> codeType() {
		return ccmDao.codeType();
	}
	
	@Override
	public List<CcmVo> codeList() {
		return ccmDao.codeList();
	}
	
	@Override
	public List<CcmVo> searchList(String code_info_type) {
		return ccmDao.searchList(code_info_type);
	}

	@Override
	public List<CcmVo> codeInfo(String code_type) {
		return ccmDao.codeInfo(code_type);
	}

	@Override
	public void codeEdit(HashMap<String,String> map) {
		ccmDao.codeEdit(map);
	}

	@Override
	public void codeAdd(HashMap<String, String> map) {
		ccmDao.codeAdd(map);
	}

	@Override
	public CcmVo searchOne(HashMap<String, String> map) {
		return ccmDao.searchOne(map);
	}

}
