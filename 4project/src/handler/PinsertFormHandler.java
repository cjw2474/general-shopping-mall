package handler;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.CommandHandler;
import dao.Product4Dao;
import model.Product4;


public class PinsertFormHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse res) {
		ArrayList<String> plist = new ArrayList<String>();
		plist.add("101"); plist.add("102"); 
		plist.add("103"); plist.add("104");
		plist.add("201"); plist.add("202"); 
		plist.add("203"); plist.add("204");
		plist.add("205"); plist.add("206"); 
		plist.add("301"); plist.add("302");
		plist.add("303"); plist.add("304"); 
		plist.add("305"); plist.add("306");
		plist.add("401"); plist.add("402");
		plist.add("403"); plist.add("404"); 
		plist.add("405"); plist.add("406");
		plist.add("501"); plist.add("502");
		plist.add("503"); plist.add("504"); 
		plist.add("505"); plist.add("506");
		
		 String subpcode = request.getParameter("subpcode");
	      Product4Dao dao = new Product4Dao();
	      List<Product4> pro = dao.slelect(subpcode);
	      HttpSession session=request.getSession();
	      
	      request.setAttribute("pro", pro);
	      request.setAttribute("plist", plist);
	      
	      request.setAttribute("session", session.getAttribute("id"));
	
		return "/view/ex/pinsert.jsp";
	}
}