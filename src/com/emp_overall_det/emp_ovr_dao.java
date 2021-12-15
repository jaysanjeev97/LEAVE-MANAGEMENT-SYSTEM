package com.emp_overall_det;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class emp_ovr_dao {
	
	public void insert (Emp_ovr_det o1) throws ClassNotFoundException, SQLException {
		
		String insertQuery="insert into LMS_EMPLOYEES_DET values (?,?,?,?,?,?,?,?,?)";
		
		Connection con=connectionutil.getDbConnection();
		PreparedStatement pstmt= con.prepareStatement(insertQuery);
		
		pstmt.setString(1, o1.getEMPLOYEE_CODE());
		pstmt.setString(2, o1.getEMPLOYEE_NAME());
		pstmt.setString(3, o1.getDATE_OF_BIRTH());
		pstmt.setString(4, o1.getGENDER());
		pstmt.setString(5, o1.getPOSITION());
		pstmt.setString(6,  o1.getHIRE_DATE());
		pstmt.setString(7, o1.getPLACE());
		pstmt.setInt(8, o1.getMANAGER_CODE());
		pstmt.setString(9, o1.getEMPLOYEE_TYPE());
		int i=pstmt.executeUpdate();
		System.out.println(i+ "inserted");
		
		}
	
	public void update(Emp_ovr_det o2) throws ClassNotFoundException, SQLException {
	String insertQuery="update LMS_EMPLOYEES_DET set EMPLOYEE_NAME=? where EMPLOYEE_CODE=? ";
		
		Connection con=connectionutil.getDbConnection();
		PreparedStatement pstmt= con.prepareStatement(insertQuery);
		pstmt.setString(1, o2.getEMPLOYEE_NAME());
		pstmt.setString(2, o2.getEMPLOYEE_CODE());
	
        int i=pstmt.executeUpdate();
	    System.out.println(i+"updated");
		
		}
	
	public void delete(Emp_ovr_det o3) throws ClassNotFoundException, SQLException {
		

		String insertQuery="delete from LMS_EMPLOYEES_DET where EMPLOYEE_CODE=?";
		
		Connection con=connectionutil.getDbConnection();
		PreparedStatement pstmt= con.prepareStatement(insertQuery);

		pstmt.setString(1, o3.getEMPLOYEE_CODE());
		int i=pstmt.executeUpdate();
		System.out.println(i+"delete");
		
		
	}
	

}
