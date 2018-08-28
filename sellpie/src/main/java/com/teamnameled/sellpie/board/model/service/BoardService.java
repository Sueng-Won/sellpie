package com.teamnameled.sellpie.board.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.board.model.dao.BoardDao;
import com.teamnameled.sellpie.board.model.vo.BoardVo;

@Service
public class BoardService {
	
	@Autowired
	BoardDao dao;

	public int insertBoard(BoardVo board) {
		return dao.insertBoard(board);
	}

	public List<String> selectfList1(String email) {
		return dao.selectfList1(email);
	}

	public List<String> selectfList2(String email) {
		return dao.selectfList2(email);
	}

	public List<BoardVo> selectbList(List<String> fList1) {
		return dao.selectbList(fList1);
	}

	public List<String> selectlList(int bno) {
		return dao.selectlList(bno);
	}

	public BoardVo selectBoard(String bno) {
		return dao.selectBoard(bno);
	}

	public List<String> selectfList5(String email) {
		return dao.selectfList5(email);
	}

	public int insertBlike(Map<String, String> likeMap) {
		return dao.insertBlike(likeMap);
	}

	public int deleteBlike(Map<String, String> likeMap) {
		return dao.deleteBlike(likeMap);
	}

	public int updateGcount(Map<String, Integer> bmap) {
		return dao.updateGcount(bmap);
	}
	
	public int updateBoard(BoardVo board) {
		return dao.updateBoard(board);
	}

	public int boardDelflag(String bno) {
		return dao.boardDelflag(bno);
	}

	public List<BoardVo> selectADList() {
		return dao.selectADList();
	}

	public List<BoardVo> selectADList2() {
		return dao.selectADList2();
	}

	public int updateSellerAu(BoardVo seller) {
		// TODO Auto-generated method stub
		/*return dao.updateSellerState(seller);*/
		return 0;
	}



}
