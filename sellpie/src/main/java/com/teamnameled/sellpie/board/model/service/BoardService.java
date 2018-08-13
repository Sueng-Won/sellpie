package com.teamnameled.sellpie.board.model.service;

import java.util.List;

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

}
