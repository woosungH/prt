package com.urms.req.service;

import java.util.List;

import com.urms.req.vo.ReqVo;

public interface ReqService {

	List<ReqVo> reqList(String id);

	List<ReqVo> reqList2(String id);

}
