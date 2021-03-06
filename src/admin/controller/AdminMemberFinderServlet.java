package admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.service.AdminService;
import common.util.CommonUtil;
import member.model.vo.Member;

/**
 * Servlet implementation class AdminMemberFinderServlet
 */
@WebServlet("/admin/memberFinder")
public class AdminMemberFinderServlet extends HttpServlet {
	/*
	private static final long serialVersionUID = 1L;
	private AdminService adminService = new AdminService();

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 사용자 입력값 처리
				String searchType = request.getParameter("searchType");
				String searchKeyword = request.getParameter("searchKeyword");
				
				int numPerPage = 10;
				int cpage = 1;
				try {
					cpage = Integer.parseInt(request.getParameter("cpage"));
				} catch (NumberFormatException e) {
					//기본값 1
				}
				
		//사용자 입력값을 Map으로 처리
		Map<String, Object> param = new HashMap<>();
		param.put("searchType", searchType);
		param.put("searchKeyword", searchKeyword);
		param.put("currentPage", cpage);
		param.put("numPerPage", numPerPage);
		
		
		//2. 업무로직 ; 검색 진행
//		List<Member> list = adminService.selectMembersBy(searchType, searchKeyword);
		List<Member> list = adminService.selectMembersBy(param);
//		System.out.println(list);
		
		//페이지 바
		int totalcontents = adminService.selectTotalMembersBy(param);
		// /mvc/admin/memberFinder
		String url = request.getRequestURI() + "?searchType=" + searchType + "&searchkeyword=" + searchKeyword;
		String pageBar = CommonUtil.getPageBar(totalcontents, cpage, numPerPage, url);
		request.setAttribute("searchType", searchType);
		request.setAttribute("searchKeyword", searchKeyword);
		request.setAttribute("list", list);
		request.setAttribute("pageBar", pageBar);
		//3. view단 처리 ; forwarding처리 >> /WEB-INF/views/memberList.jsp
		request.getRequestDispatcher("/WEB-INF/views/admin/memberList.jsp").forward(request, response);		//주소 잘 확인 할 것.
	}
	*/
}
