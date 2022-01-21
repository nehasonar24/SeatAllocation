package com.cdac.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdac.entity.Employee;
import com.cdac.entity.GenericDao;


@WebServlet("/ResisterEmployeeServlet")
public class ResisterEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Employee emp = new Employee();
		emp.setFirstName(request.getParameter("FirstName"));
		emp.setLastName(request.getParameter("LastName"));
		emp.setUsername(request.getParameter("Username"));		
		emp.setTeamID(Integer.parseInt(request.getParameter("TeamID")));
		emp.setManagerID( Integer.parseInt(request.getParameter("ManagerID")));	
		emp.setIsManager( Boolean.parseBoolean(request.getParameter("IsManager")));
		emp.setPassword(request.getParameter("Password"));
		GenericDao dao = new GenericDao();
		dao.add(emp);
		response.sendRedirect("welcome.jsp");
	
	
	}

}
