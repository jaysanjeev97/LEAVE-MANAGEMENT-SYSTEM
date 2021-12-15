package com.emp_overall_det;

import java.util.Date;

public class Emp_ovr_det {
	
	private String EMPLOYEE_CODE;
	private String EMPLOYEE_NAME ;
	private String DATE_OF_BIRTH;
	private String GENDER;
	private String POSITION ;
	private String  HIRE_DATE;
	private String PLACE ;
	private int MANAGER_CODE ;
	private String EMPLOYEE_TYPE;
	
	
	public String getEMPLOYEE_CODE() {
		return EMPLOYEE_CODE;
	}
	public void setEMPLOYEE_CODE(String eMPLOYEE_CODE) {
		EMPLOYEE_CODE = eMPLOYEE_CODE;
	}
	public String getEMPLOYEE_NAME() {
		return EMPLOYEE_NAME;
	}
	public void setEMPLOYEE_NAME(String eMPLOYEE_NAME) {
		EMPLOYEE_NAME = eMPLOYEE_NAME;
	}
	public String getDATE_OF_BIRTH() {
		return DATE_OF_BIRTH;
	}
	public void setDATE_OF_BIRTH(String dATE_OF_BIRTH) {
		DATE_OF_BIRTH = dATE_OF_BIRTH;
	}
	public String getGENDER() {
		return GENDER;
	}
	public void setGENDER(String gENDER) {
		GENDER = gENDER;
	}
	public String getPOSITION() {
		return POSITION;
	}
	public void setPOSITION(String pOSITION) {
		POSITION = pOSITION;
	}
	public String getHIRE_DATE() {
		return HIRE_DATE;
	}
	public void setHIRE_DATE(String hIRE_DATE) {
		HIRE_DATE = hIRE_DATE;
	}
	public String getPLACE() {
		return PLACE;
	}
	public void setPLACE(String pLACE) {
		PLACE = pLACE;
	}
	public int getMANAGER_CODE() {
		return MANAGER_CODE;
	}
	public void setMANAGER_CODE(int mANAGER_CODE) {
		MANAGER_CODE = mANAGER_CODE;
	}
	public String getEMPLOYEE_TYPE() {
		return EMPLOYEE_TYPE;
	}
	public void setEMPLOYEE_TYPE(String eMPLOYEE_TYPE) {
		EMPLOYEE_TYPE = eMPLOYEE_TYPE;
	}
	
	
	
	
	public Emp_ovr_det(String eMPLOYEE_CODE, String eMPLOYEE_NAME, String dATE_OF_BIRTH, String gENDER, String pOSITION,
			String hIRE_DATE, String pLACE, int mANAGER_CODE, String eMPLOYEE_TYPE) {
		super();
		EMPLOYEE_CODE = eMPLOYEE_CODE;
		EMPLOYEE_NAME = eMPLOYEE_NAME;
		DATE_OF_BIRTH = dATE_OF_BIRTH;
		GENDER = gENDER;
		POSITION = pOSITION;
		HIRE_DATE = hIRE_DATE;
		PLACE = pLACE;
		MANAGER_CODE = mANAGER_CODE;
		EMPLOYEE_TYPE = eMPLOYEE_TYPE;
	}
	public Emp_ovr_det() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "emp_ovr_det [EMPLOYEE_CODE=" + EMPLOYEE_CODE + ", EMPLOYEE_NAME=" + EMPLOYEE_NAME + ", DATE_OF_BIRTH="
				+ DATE_OF_BIRTH + ", GENDER=" + GENDER + ", POSITION=" + POSITION + ", HIRE_DATE=" + HIRE_DATE
				+ ", PLACE=" + PLACE + ", MANAGER_CODE=" + MANAGER_CODE + ", EMPLOYEE_TYPE=" + EMPLOYEE_TYPE + "]";
	}
	public Emp_ovr_det(String eMPLOYEE_CODE, String eMPLOYEE_NAME) {
		super();
		EMPLOYEE_CODE = eMPLOYEE_CODE;
		EMPLOYEE_NAME = eMPLOYEE_NAME;
	}
	public Emp_ovr_det(String eMPLOYEE_CODE) {
		super();
		EMPLOYEE_CODE = eMPLOYEE_CODE;
	}
	
		
	}

	
	
	


