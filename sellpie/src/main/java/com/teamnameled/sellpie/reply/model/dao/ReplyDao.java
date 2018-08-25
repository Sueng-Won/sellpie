package com.teamnameled.sellpie.reply.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.reply.model.vo.ReplyVo;

@Repository
public class ReplyDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<ReplyVo> selectReply(String bno) {
		return sqlSession.selectList("replyMapper.selectReplyList", bno);
	}

	public int selectRcount(int bno) {
		return sqlSession.selectOne("replyMapper.selectRcount",bno);
	}

	public int insertReply(ReplyVo reply) {
		return sqlSession.insert("replyMapper.insertReply", reply);
	}

}
