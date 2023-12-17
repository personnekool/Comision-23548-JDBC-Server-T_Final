package com.codofina.gestor.oradores;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCManagerOradores {
	private String dbURL = "jdbc:mysql://localhost:3306/";
	private String dbUserName = "root";
	private String dbPass = "1234";
	private String schema = "CODO2023dB";
	private String error = "No Error found";
	// Queries
	private String queryCreate = "INSERT INTO ORADORES (fname, lname, email, phone) VALUES (?,?,?,?)";
	private String queryRead = "SELECT * FROM ORADORES WHERE email = ?";
	// Only two posibilities to update are implemented: all or phone
	private String queryUpdateAll = "UPDATE ORADORES SET fname=?, lname=?, phone=? WHERE email = ?";
	private String queryUpdatePhone = "UPDATE ORADORES SET phone=? WHERE email=?";
	private String queryDelete = "DELETE FROM ORADORES WHERE email=?";
	
	
	public JDBCManagerOradores() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	public String getJDBCManagerError() {
		return this.error;
	}
	public boolean RegisterOrador(String fname, String lname, String email, String phone) {
		try(Connection connection = DriverManager.getConnection(dbURL+schema, dbUserName, dbPass);
			PreparedStatement pst = connection.prepareStatement(this.queryCreate)) {
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, email);
			pst.setString(4, phone);
			
			int rowCount = pst.executeUpdate();
			
			return (rowCount>0);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			this.error = e.getMessage();
			return false;
		}
	}
	public ResultSet ReadOrador(String email) {
		ResultSet data = null;
		try(Connection connection = DriverManager.getConnection(dbURL+schema, dbUserName, dbPass);
			PreparedStatement pst = connection.prepareStatement(queryRead)){
			pst.setString(1, email);
			data = pst.executeQuery();
		}catch(SQLException e) {
			this.error = e.getMessage();;
		}
		return data;
	}
	public boolean UpdateAllOrador(String fname, String lname, String email, String phone) {
		try (Connection connection = DriverManager.getConnection(dbURL+schema, dbUserName, dbPass);
			 PreparedStatement pst = connection.prepareStatement(queryUpdateAll)){
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, phone);
			pst.setString(4, email);
			int rowCount = pst.executeUpdate();
			
			return (rowCount>0);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			this.error = e.getMessage();
			return false;
		}
	}
	public boolean UpdatePhoneOrador(String phone, String email) {
		try(Connection connection = DriverManager.getConnection(dbURL+schema,dbUserName, dbPass);
			PreparedStatement pst = connection.prepareStatement(queryUpdatePhone)){
				pst.setString(1, phone);
				pst.setString(2, email);
				int rowCount = pst.executeUpdate();
				
				return (rowCount>0);
			}catch(SQLException e) {
				this.error = e.getMessage();
				return false;
			}
	}
	public boolean DeleteOrador(String email) {
		try(Connection connection = DriverManager.getConnection(dbURL+schema,dbUserName,dbPass);
			PreparedStatement pst = connection.prepareStatement(queryDelete)){
			pst.setString(1, email);
			int rowCount = pst.executeUpdate();
			
			return (rowCount>0);
		}catch(SQLException e) {
			this.error = e.getMessage();
			return false;
		}
	}

}
