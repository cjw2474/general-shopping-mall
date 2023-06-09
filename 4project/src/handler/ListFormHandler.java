package handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import command.CommandHandler;
import dao.BoardDao;
import dao.MemberDao;
import dao.Product4Dao;
import dao.SBoardDao;
import model.Board;
import model.Member;
import model.Product4;
import model.SBoard;

public class ListFormHandler implements CommandHandler{

		@Override
		public String process(HttpServletRequest request, HttpServletResponse res) {
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ArrayList<String> plist = new ArrayList<String>();
			plist.add("101"); plist.add("102"); 
			plist.add("103"); plist.add("104");
			plist.add("201"); plist.add("202"); 
			plist.add("203"); plist.add("204");
			plist.add("205"); plist.add("301"); 
			plist.add("302"); plist.add("303"); 
			plist.add("304"); plist.add("401");
			plist.add("402"); plist.add("403"); 
			plist.add("404"); plist.add("501");
			plist.add("502"); plist.add("503"); 
			plist.add("504"); plist.add("505"); 
			
			String subpcode = request.getParameter("subpcode");
	        Product4Dao dao = new Product4Dao();
	        List<Product4> pro = dao.slelect(subpcode);
	        HttpSession session=request.getSession();
			
	        request.setAttribute("session", session.getAttribute("id"));
			
	        request.setAttribute("pro", pro);
	        request.setAttribute("plist", plist);
			
			return "/view/ex/listForm.jsp";
	}
}
