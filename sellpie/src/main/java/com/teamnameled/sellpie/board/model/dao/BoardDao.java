package com.teamnameled.sellpie.board.model.dao;

import java.util.ArrayList;
import java.util.List;

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

	public List<String> selectfList1(String email) {
		return sqlSession.selectList("boardMapper.selectfList1",email);
	}

	public List<String> selectfList2(String email) {
		return sqlSession.selectList("boardMapper.selectfList2",email);
	}

	public List<BoardVo> selectbList(List<String> fList1) {
		return sqlSession.selectList("boardMapper.selectbList", fList1);
	}

	public List<String> selectlList(int bno) {
		return sqlSession.selectList("boardMapper.selectlList", bno);
	}

}
