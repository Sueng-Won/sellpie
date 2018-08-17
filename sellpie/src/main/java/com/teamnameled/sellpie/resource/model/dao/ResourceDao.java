package com.teamnameled.sellpie.resource.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.resource.model.vo.ResourceVo;

@Repository
public class ResourceDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession; //root-context.xml에 선언됨

	public int insertResource(ResourceVo resource) {
		return sqlSession.insert("resourceMapper.insertResource", resource);
	}

	public int deleteResource(String oldFilePath) {
		return sqlSession.delete("resourceMapper.deleteResource", oldFilePath);
	}


}
