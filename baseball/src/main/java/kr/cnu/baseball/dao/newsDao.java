package kr.cnu.baseball.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.cnu.baseball.util.PageUtil;
import kr.cnu.baseball.vo.newsVO;

public class newsDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 뉴스 기사 총 개수 조회 함수
	public int getTotal() {
		return sqlSession.selectOne("nSQL.totalCnt");
	}
	// 뉴스 조회 전담 처리함수
	public List getNews(PageUtil page) {
		return sqlSession.selectList("nSQL.getNews", page);
	}
	public int writeNews(newsVO nVO) {
		return sqlSession.insert("nSQL.writeNews", nVO);
	}
	public newsVO newsSelect(int nno) {
		return sqlSession.selectOne("nSQL.newsSelect", nno);
	}
}
