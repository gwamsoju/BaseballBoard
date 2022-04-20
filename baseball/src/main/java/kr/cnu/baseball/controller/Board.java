package kr.cnu.baseball.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.cnu.baseball.dao.BoardDAO;
import kr.cnu.baseball.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class Board {
	
	@Autowired
	BoardDAO bDAO;
	
	// 게시물 전체 가져오는 메서드 
	@RequestMapping("/board.cnu")
	public ModelAndView BoardList(HttpSession session, RedirectView rv) {
		String sid = (String)session.getAttribute("SID");
		ModelAndView mv = new ModelAndView();
		
		List list = bDAO.getBoardList();
		
		if(sid != null) {
		mv.addObject("boardList", list);
		mv.setViewName("/board/board");
		}else {
			rv.setUrl("/baseball/");
			mv.setView(rv);
		}
		
		return mv;
		
	}
	
	// 게시물 작성 폼 가져오는 메서드 
	@RequestMapping("/boardwrite.cnu")
	public ModelAndView BoardWrite(HttpSession session) {
		String sid = (String) session.getAttribute("SID");
		ModelAndView mv = new ModelAndView();
		mv.addObject("SID",sid);
		mv.setViewName("/board/boardwrite");
		return mv;
	}
	
	// 게시물 데이터베이스에 적용하는 메서드 
	@RequestMapping("/writefin.cnu")
	public ModelAndView insertBoard(BoardVO bVO, RedirectView rv) {
		int cnt = bDAO.insertBoard(bVO);
		ModelAndView mv = new ModelAndView();
		if(cnt == 1) {
			rv.setUrl("/baseball/board/board.cnu");
		}else {
			rv.setUrl("/board/boardwrite");
		}
		
		mv.setView(rv);
		return mv;
	}
	
	// 게시물 상세보기 메서드 
	@RequestMapping("/Select.cnu")
	public ModelAndView selectBoardByBrdno( int brdno, BoardVO bVO) {
		ModelAndView mv = new ModelAndView();
		bDAO.clicknum(brdno);
		bVO = bDAO.selectBoardByBrdno(brdno);
		
		mv.addObject("board", bVO);
		mv.setViewName("/board/selectBoard");
		
		return mv;
	}
	
	@RequestMapping("/boardUpdate.cnu")
	public ModelAndView boardUpdateForm(BoardVO bVO, int brdno) {
		
		ModelAndView mv = new ModelAndView();
		bVO = bDAO.selectBoardByBrdno(brdno);
		
		mv.addObject("board", bVO);
		mv.setViewName("/board/boardUpdate");
		
		return mv;
	}
	
	@RequestMapping("/UpdateFin.cnu")
	public ModelAndView boardUpdate(BoardVO bVO, RedirectView rv) {
		
		ModelAndView mv = new ModelAndView();
		int cnt = bDAO.boardUpdate(bVO);
		
		
		if(cnt == 1) {
			rv.setUrl("/baseball/board/board.cnu");
		}else {
			rv.setUrl("/board/boardUpdate");
		}
		
		mv.setView(rv);
		
		return mv;
	}
	
	@RequestMapping("/boardDelete.cnu")
	public ModelAndView boardDelete(RedirectView rv, int brdno) {
		ModelAndView mv = new ModelAndView();
		
		int cnt = bDAO.boardDelete(brdno);
		
		if(cnt == 1) {
			rv.setUrl("/baseball/board/board.cnu");
		}else {
			rv.setUrl("/board/boardUpdate");
		}
		
		mv.setView(rv);	
		return mv;
	}
}
