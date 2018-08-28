package com.teamnameled.sellpie.board.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.seller.model.vo.Seller;

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

	public BoardVo selectBoard(String bno) {
		return sqlSession.selectOne("boardMapper.selectBoard", bno);
	}

	public List<String> selectfList5(String email) {
		return sqlSession.selectList("boardMapper.selectfList5", email);
	}

	public int updateGcount(Map<String, Integer> bmap) {
		return sqlSession.update("boardMapper.updateGcount", bmap);
	}

	public int insertBlike(Map<String, String> likeMap) {
		return sqlSession.insert("boardMapper.insertBlike", likeMap);
	}


	public int deleteBlike(Map<String, String> likeMap) {
		return sqlSession.delete("boardMapper.deleteBlike", likeMap);
	}


	public int updateBoard(BoardVo board) {
		return sqlSession.update("boardMapper.updateBoard", board);
	}

	public int boardDelflag(String bno) {
		return sqlSession.update("boardMapper.boardDelflag",bno);
	}

<<<<<<< HEAD
	public List<BoardVo> selectADList() {
		return sqlSession.selectList("boardMapper.selectADList");
	}

	public List<BoardVo> selectADList2() {
		return sqlSession.selectList("boardMapper.selectADList2");
	}

=======
>>>>>>> refs/heads/master

}
