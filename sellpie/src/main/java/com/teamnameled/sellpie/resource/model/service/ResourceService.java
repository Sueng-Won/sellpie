package com.teamnameled.sellpie.resource.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.resource.model.dao.ResourceDao;
import com.teamnameled.sellpie.resource.model.vo.ResourceVo;

@Service
public class ResourceService {
	
	@Autowired
	ResourceDao dao;

	public int insertResource(ResourceVo resource) {
		return dao.insertResource(resource);
	}

	public int deleteResource(String delfile) {
		return dao.deleteResource(delfile);
	}


}
