package com.teamnameled.sellpie.board.model.service;

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

}
