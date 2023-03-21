package com.urms.rli.service;

import java.util.HashMap;
import java.util.List;

import com.urms.rli.vo.RliVo;

public interface RliService {
	
	List<RliVo> list();
	
	List<RliVo> search(HashMap<String,String> searchInfo);

	List<RliVo> sysList(HashMap<String, String> param);
}
