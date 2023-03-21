package com.urms.ccm.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.ccm.dao.CcmDao;
import com.urms.ccm.vo.CcmVo;


@Repository("CcmDao")
public class CcmDaoImpl implements CcmDao{

	@Autowired
	SqlSession sql;

	@Override
	public List<CcmVo> codeType() {
		return sql.selectList("ccm.codeType");
	}
	
	@Override
	public List<CcmVo> codeList() {
		return sql.selectList("ccm.searchOne");
	}
	
	@Override
	public List<CcmVo> searchList(String code_info_type) {
		return sql.selectList("ccm.searchList",code_info_type);
	}

	@Override
	public CcmVo searchOne(HashMap<String, String> map) {
		return sql.selectOne("ccm.searchOne", map);
	}
	
	@Override
	public List<CcmVo> codeInfo(String code_type) {
		return sql.selectList("ccm.searchOne", code_type);
	}

	@Override
	public void codeEdit(HashMap<String,String> map) {
		sql.update("ccm.codeEdit", map);
	}

	@Override
	public void codeAdd(HashMap<String, String> map) {
		sql.insert("ccm.codeAdd", map);
	}


}
