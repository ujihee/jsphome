package controller.community.news;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
 * 날짜 : -
 * 이름 : 장진원
 * 내용 : -
 */
@WebServlet("/community/news.do")
public class NewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/* service, logger 추가 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 필요 시 DB Logic 추가 */
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/community/news.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
