package com.urms.ccm.service;

import java.util.HashMap;
import java.util.List;

import com.urms.ccm.vo.CcmVo;

public interface CcmService {

	List<CcmVo> codeType();
	
	List<CcmVo> codeList();
	
	List<CcmVo> searchList(String code_info_type);
	
	CcmVo searchOne(HashMap<String, String> map);

	List<CcmVo> codeInfo(String code_type);

	void codeEdit(HashMap<String,String> map);
	
	void codeAdd(HashMap<String,String> map);
}
