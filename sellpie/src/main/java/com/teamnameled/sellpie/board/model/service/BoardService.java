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

	public List<BoardVo> selectBoardList() {
		return dao.selectBoardList();
	}

}
