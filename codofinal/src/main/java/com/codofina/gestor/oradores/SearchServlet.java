package com.codofina.gestor.oradores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/s_o")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user data to process db
		String email = request.getParameter("email");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/se_orador.jsp");
		JDBCManagerOradores jdbcManager = new JDBCManagerOradores();
		ArrayList<String> orador = jdbcManager.ReadOrador(email);
		if(orador.isEmpty()) {
			request.setAttribute("status_read", "Fail");
		}else {
			request.setAttribute("status_read", "Success");
			request.setAttribute("fname", orador.get(0));
			request.setAttribute("lname", orador.get(1));
			request.setAttribute("email", orador.get(2));
			request.setAttribute("phone", orador.get(3));
		}
		
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
