package com.tadigital.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.tadigital.entity.Customer;

public class CustomerDao extends Dao {
	public boolean selectCustomerByEmailAndPassword(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information WHERE cust_email = '" + customer.getEmail() + "' AND cust_pwd = '" + customer.getPassword() + "'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				status = true;
				
				customer.setId(rs.getInt(1));
				customer.setName(rs.getString(2));
				customer.setGender(rs.getString(6));
				customer.setMobilenumber(rs.getString(7));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	
	public boolean selectCustomerByEmailAndStaySignedIn(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information WHERE cust_email = '" + customer.getEmail() + "' AND cust_staysignedin = '" + customer.getStaySignedIn() + "'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				status = true;
				
				customer.setId(rs.getInt(1));
				customer.setName(rs.getString(2));
				customer.setPassword(rs.getString(4));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	
	public boolean insertCustomer(Customer customer) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "INSERT INTO customer_information(cust_name, cust_email, cust_pwd, cust_gender, cust_mobilenumber) " +
						 "VALUES('" + customer.getName() + "', '" + customer.getEmail() + "', '" + customer.getPassword() + "','"+customer.getGender()+"','"+customer.getMobilenumber()+"')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	
	public void updateStaySignedInStatus(String email, String status) {
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "UPDATE customer_information set cust_staysignedin='" + status + "' WHERE cust_email='" + email + "'";
						 
			stmt.executeUpdate(sql);
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
	}
	public boolean updatePassword(String email, String newpassword) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "UPDATE customer_information set cust_pwd='" + newpassword + "' WHERE cust_email='" + email + "'";
						 
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}

		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		return status;
	}
}