package kr.cnu.baseball.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.cnu.baseball.vo.BoardVO;

public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List getBoardList(){
		return sqlSession.selectList("bSQL.getBoardList");
	}
	public int insertBoard(BoardVO bVO) {
		return sqlSession.insert("bSQL.insertBoard", bVO);
	}
	public BoardVO selectBoardByBrdno(int brdno) {
		return sqlSession.selectOne("bSQL.selectBoardByBrdno", brdno);
	}
	public void clicknum(int brdno) {
		 sqlSession.update("bSQL.clicknum", brdno);
	}
	public int boardUpdate(BoardVO bVO) {
		return sqlSession.update("bSQL.boardUpdate", bVO);
	}
	public int boardDelete(int brdno) {
		return sqlSession.delete("bSQL.boardDelete", brdno);
	}
}
