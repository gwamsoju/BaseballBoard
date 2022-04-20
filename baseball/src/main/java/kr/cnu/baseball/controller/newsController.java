package kr.cnu.baseball.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.cnu.baseball.dao.newsDao;
import kr.cnu.baseball.util.PageUtil;
import kr.cnu.baseball.vo.newsVO;

@Controller
@RequestMapping("/news")
public class newsController {
 
		@Autowired
			newsDao nDao;
		
		@RequestMapping("/news.cnu")
		public ModelAndView newsList(PageUtil page, ModelAndView mv) {
			/*
				페이징 처리에 필요한 데이터
					현재페이지, 총게시글 수, 보여질 게시글 수, 이동가능한 페이지 수
					
				지금의 경우는 한페이지에 5개의 글이 보이도록 해주고,
				이동가능한 페이지수도 5개로 해주자.
			 */
			int total = nDao.getTotal();
			// 데이터 만들고
			page.setPage(page.getNowPage(), total, 3, 5);
			
			List list = nDao.getNews(page);
			for(Object o : list) {
				newsVO nVO= (newsVO) o;
				nVO.setWdate(nVO.getN_date());
			}
			
			// 데이터 전달하고
			mv.addObject("PAGE", page);
			mv.addObject("LIST", list);
			// 뷰 셋팅하고
			mv.setViewName("/baseball/");
			// 반환값 반환해주고
			return mv;
		}
		
		@RequestMapping("/writeNews.cnu")
		public ModelAndView writeNews() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/news/NewsWriteForm");
			return mv;
		}
		
		@RequestMapping("/newsWriteFin.cnu")
		public ModelAndView newsWriteFin(newsVO nVO, RedirectView rv) {
			ModelAndView mv = new ModelAndView();
			int cnt = nDao.writeNews(nVO);
			if(cnt == 1) {
				rv.setUrl("/baseball");
			}else {
				rv.setUrl("/baseball/news/writeNews.cnu");
			}
			mv.setView(rv);
			return mv;
		}
		@RequestMapping("/newsSelect")
		public ModelAndView newsSelect(ModelAndView mv, int nno, newsVO nVO) {
			 nVO = nDao.newsSelect(nno);
			 mv.addObject("news", nVO);
			 mv.setViewName("/news/newsSelect");
			 return mv;
		}
}
