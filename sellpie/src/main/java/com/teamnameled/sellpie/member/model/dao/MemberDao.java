package com.teamnameled.sellpie.member.model.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.member.model.vo.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	public int insertMember(Member member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}

	public int updateUserPwd(Member member) {
		return sqlSession.update("memberMapper.updateMemberPwd", member);
	}

	public List<Member> searchMemberList(String searchText) {
		return sqlSession.selectList("memberMapper.searchMemberList", searchText);
	}

	public Member userLogin(String email) {
        return sqlSession.selectOne("memberMapper.userLogin", email);
	}

	public void keepLogin(String email, String sessionId, Date next) {
		Map<String, Object> map = new HashMap<String,Object>();
        map.put("email", email);
        map.put("sessionId", sessionId);
        map.put("next", next);
         
        // Mapper.xml로 데이터를 전달할 때 한 객체밖에 전달 못함으로 map으로 묶어서 보내줌 단... 주의할 점은
        // Mapper.xml 안에서 #{} 이 안에 지정한 이름이랑 같아야함.. 자동으로 매핑될 수 있도록
        // 아래가 수행되면서, 사용자 테이블에 세션id와 유효시간이 저장됨
        sqlSession.update("memberMapper.keepLogin",map);
		
	}

	public Member checkUserSessionKey(String sessionId) {
		return sqlSession.selectOne("memberMapper.checkUserSessionKey",sessionId);

	}

	public int modifyUserInfo(Member member) {
		return sqlSession.update("memberMapper.modifyUserInfo", member);
	}


	public int updateImg(Member member) {
		return sqlSession.update("memberMapper.updateProfileImg", member);
	}

}
