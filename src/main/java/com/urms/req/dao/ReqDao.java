package com.urms.req.dao;

import java.util.List;

import com.urms.req.vo.ReqVo;

public interface ReqDao {

	List<ReqVo> reqList(String id);

	List<ReqVo> reqList2(String id);

}
