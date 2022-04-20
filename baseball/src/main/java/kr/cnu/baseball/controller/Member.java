package kr.cnu.baseball.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.cnu.baseball.dao.MemberDao;
import kr.cnu.baseball.dao.newsDao;
import kr.cnu.baseball.util.PageUtil;
import kr.cnu.baseball.vo.MemberVO;
import kr.cnu.baseball.vo.newsVO;

@Controller
@RequestMapping("/member")
public class Member {
		
	
		@Autowired
		MemberDao mDao;
		@Autowired
		newsDao nDao;
		
		@RequestMapping("/login.cnu")
		public ModelAndView loginForm(ModelAndView mv, RedirectView rv,
										HttpSession session, MemberVO mVO/* , HttpServletResponse resp */) throws ServletException, IOException {
	
			Object sid = session.getAttribute("SID");
			if(sid != null) {
				rv.setUrl("/baseball/");
				mv.setView(rv);
			}
		
			return mv;
		}
		// 로그인 요청 
		@RequestMapping("/loginProc.cnu")
		@ResponseBody
		public MemberVO loginProc(MemberVO mVO, HttpSession session, HttpServletRequest request) {
			mVO.setCnt(mDao.getLogin(mVO));
			if(mVO.getCnt() == 1) {
				session.setAttribute("SID", mVO.getId());
				System.out.println("########## sid : " + mVO.getId());
			}
			return mVO;
		}
		// 로그아웃 요청
		@RequestMapping("/logout.cnu")
		public ModelAndView logout(ModelAndView mv, HttpSession session, RedirectView rv) {
			// 세션에 SID로 기억된 데이터를 지운다.
			session.removeAttribute("SID");
			
			// 메인페이지로 다시 보낸다.(redirect)
			rv.setUrl("/baseball/");
			mv.setView(rv);
			
			return mv;
		}
		
		// 내 정보 요청 
		@RequestMapping("/myInfo.cnu")
		public ModelAndView getMyInfo(ModelAndView mv, MemberVO mVO) {
			
			System.out.println("########## sid : " + mVO.getId());
			mVO = mDao.getInfo(mVO);
			mv.addObject("DATA", mVO);
			mv.setViewName("member/Myinfo");
			return mv;
		}
		
		// 회원가입 폼보기요청
		@RequestMapping("/join.cnu")
		public ModelAndView join(ModelAndView mv, HttpSession session, RedirectView rv) {
			// 할일
			// 1. 로그인 체크하고
			String sid = (String) session.getAttribute("SID");
			/*
				세션에는 데이터를 기억시킬때 Object 타입으로 기억된다.
				따라서 꺼내서 사용할 때는 반드시 강제 형변환해서 사용한다.
			 */
			if(sid != null) {
				// 2. 로그인 되어있으면 메인으로 보내고
				rv.setUrl("/baseball/main.cnu");
				mv.setView(rv);
			} else {
				// 3. 로그인 안되어있으면 뷰 부르고
				mv.setViewName("member/join");
			}
			
			// 4. 반환값 반환하고
			return mv;
		}
		// idCheck 
		@RequestMapping("/idCheck.cnu")
		@ResponseBody
		public MemberVO idCheck(MemberVO mVO) {
			// 디비작업 결과받고
			int cnt = mDao.getIdCount(mVO.getId());
			
			if(cnt == 0) {
				// 사용가능한 아이디인경우
				mVO.setMsg("OK");
			} else {
				// 사용불가능한 아이디인 경우
				mVO.setMsg("NO");
			}
			return mVO;
		}
		@RequestMapping("/joinProc.cnu")
		public ModelAndView joinProc(ModelAndView mv, MemberVO mVO, 
									 RedirectView rv) {
			int cnt = mDao.addMember(mVO);
			
			System.out.println("cnt : " + cnt);
			
			if(cnt == 1) {
				// 가입 성공한 경우
				rv.setUrl("/baseball/");
			} else {
				// 실패한 경우
				rv.setUrl("/baseball/member/join.cnu");
			}
			
			mv.setView(rv);
			return mv; 
		}
		// 정보 수정 뷰 
		@RequestMapping("/editInfo.cnu")
		public ModelAndView editMyInfo(ModelAndView mv, MemberVO mVO) {
			mv.addObject("MSG", mVO.getMsg());
			
			System.out.println("########## sid : " + mVO.getId());
			mVO = mDao.getInfo(mVO);
			mv.addObject("DATA", mVO);
			mv.setViewName("member/edit");
			return mv;
		}
		// 정보 수정 
		@RequestMapping("/myInfoEditProc.cnu")
		public ModelAndView editProc(ModelAndView mv, MemberVO mVO, HttpSession session, RedirectView rv) {
			mDao.editInfo(mVO);
			session.invalidate();
			rv.setUrl("/baseball/");
			mv.setView(rv);
			return mv;
		}
}
