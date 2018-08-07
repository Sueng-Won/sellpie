package com.teamnameled.sellpie.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.board.model.vo.BoardVo;

@Repository
public class BoardDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertBoard(BoardVo board) {
		return sqlSession.insert("boardMapper.insertBoard", board);
	}

}
