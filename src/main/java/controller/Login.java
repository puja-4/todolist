package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Dao;
import DTO.Task;
import DTO.User;
@WebServlet("/userlogin")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Dao dao=new Dao();
		
		try {
		
			User u = dao.findByEmail(email);
		if(u!=null) {
			if(u.getUserpassword().equals(password))
			{
				List<Task> tasks = dao.getalltasksByUserId(u.getUserid());
				req.setAttribute("tasks", tasks);
				
				HttpSession session=req.getSession();
				session.setAttribute("user",u);
				
				req.getRequestDispatcher("home.jsp").include(req, resp);
			}
			else {
				req.setAttribute("message", "password wrong");
				req.getRequestDispatcher("login.jsp").include(req, resp);
			}
		}
		else {
			req.setAttribute("message", " wrong email");
			
			req.getRequestDispatcher("login.jsp").include(req, resp);
		}
	}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		

	
	}
}

	



