package com.urms.req.dao;

import java.util.HashMap;
import java.util.List;

import com.urms.poi.vo.PoiVo;
import com.urms.req.vo.ReqVo;

public interface ReqDao {

	List<ReqVo> reqList(String id);

	List<ReqVo> reqList2(String id);

	int reqCount();

	int reqNoCount();

	int reqYesCount();

	List<ReqVo> reportList(HashMap<String, Object> map);

	List<ReqVo> search(HashMap<String, Object> map);

	List<ReqVo> excelDown(HashMap<String, Object> map);

}
