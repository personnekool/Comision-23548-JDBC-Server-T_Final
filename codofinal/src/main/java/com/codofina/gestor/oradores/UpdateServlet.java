package com.codofina.gestor.oradores;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/u_o")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user data from db
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/se_orador.jsp");
		
		JDBCManagerOradores jdbcManager = new JDBCManagerOradores();
		
		// Update all fields or phone only
		if(!fname.isEmpty() && !lname.isEmpty() && !phone.isEmpty()) {
			if(jdbcManager.UpdateAllOrador(fname, lname, email, phone)) {
				request.setAttribute("status_updateAll","Success");
			}else {
				request.setAttribute("status_updateAll","Fail");
			}
			dispatcher.forward(request, response);
		}else if(!phone.isEmpty()) {
			if(jdbcManager.UpdatePhoneOrador(phone, email)) {
				request.setAttribute("status_updatePhone", "Success");
			}else {
				request.setAttribute("status_updatePhone", "Fail");
			}
			dispatcher.forward(request, response);
		}
		System.out.println("UpdateError:" + jdbcManager.getJDBCManagerError());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
