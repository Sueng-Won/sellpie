package com.teamnameled.sellpie.reply.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.reply.model.dao.ReplyDao;
import com.teamnameled.sellpie.reply.model.vo.ReplyVo;

@Service
public class ReplyService {
	
	@Autowired
	ReplyDao dao;

	public List<ReplyVo> selectReply(String bno) {
		return dao.selectReply(bno);
	}

	public int selectRcount(int bno) {
		return dao.selectRcount(bno);
	}

	public int insertReply(ReplyVo reply) {
		return dao.insertReply(reply);
	}

}
