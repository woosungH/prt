package com.urms.rli.dao;

import java.util.HashMap;
import java.util.List;

import com.urms.rli.vo.RliVo;

public interface RliDao {

	List<RliVo> list();
	
	List<RliVo> search(HashMap<String,String> searchInfo);
	
	List<RliVo> sysList(HashMap<String, String> param);
}
