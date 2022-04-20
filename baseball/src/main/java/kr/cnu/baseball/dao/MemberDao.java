package kr.cnu.baseball.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.cnu.baseball.vo.MemberVO;

public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	/*
	  자동의존주입은 반드시 빈처리 객체에 한해서만 
	  사용가능하다.
	 */
	public int getLogin(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.login", mVO);
	};
	
	public MemberVO getInfo(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.getInfo", mVO);
	}
	// 아이디체크 데이터베이스 작업 전담 처리함수
	public int getIdCount(String id) {
		return sqlSession.selectOne("mSQL.idCheck", id);
	}
	// 회원 추가 데이터베이스 전담 처리함수 
	public int addMember(MemberVO mVO) {
		return sqlSession.insert("mSQL.addMember", mVO);
	}
	// 회원정보수정 데이터베이스 작업 전담 처리함수
	public int editInfo(MemberVO mVO) {
		return sqlSession.update("mSQL.editInfo", mVO);
	}
}
