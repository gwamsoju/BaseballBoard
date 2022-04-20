package kr.cnu.baseball.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.cnu.baseball.dao.newsDao;
import kr.cnu.baseball.util.PageUtil;
import kr.cnu.baseball.vo.newsVO;

@Controller
public class Maincontroller {
	
	@Autowired
	newsDao nDao;
	
	@RequestMapping({"/","/main.jsp"})
	public ModelAndView getView(ModelAndView mv, PageUtil page) {
		
		int total = nDao.getTotal();
		// 데이터 만들고
		page.setPage(page.getNowPage(), total, 3, 5);
		
		List list = nDao.getNews(page);
		for(Object o : list) {
			newsVO nVO= (newsVO) o;
			nVO.setWdate(nVO.getN_date());
		}
		mv.addObject("PAGE", page);
		mv.addObject("LIST", list);
		// 뷰 셋팅하고
		mv.setViewName("/main");
		
		return mv;
	}
}
