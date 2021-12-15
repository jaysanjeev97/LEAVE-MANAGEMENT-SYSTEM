package com.emp_overall_det;

import java.sql.SQLException;
import java.util.Date;
import java.util.Scanner;

public class mainover {
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
        Scanner sc=new Scanner(System.in);
		
		System.out.println("enter details 1 insert or 2 update or 3 delete");
	
		int num=sc.nextInt();
		emp_ovr_dao ob=new emp_ovr_dao();
		sc.nextLine();
		switch(num)
		{
		case 1:
			System.out.println("enter insert details");
			String s1=sc.next();
			
			
			Emp_ovr_det o1 =new Emp_ovr_det((s1.split(",")[0]), s1.split(",")[1], s1.split(",")[2], s1.split(",")[3], 
					s1.split(",")[4], s1.split(",")[5], s1.split(",")[6], Integer.parseInt(s1.split(",")[7]), s1.split(",")[8]);
			
			ob.insert(o1);
			break;
			
		case 2:	
			System.out.println("enter update EMPLOYEE_CODE  and EMPLOYEE_NAME    ");
			String s2=sc.nextLine();
			Emp_ovr_det o2 =new Emp_ovr_det( s2.split(",")[0],s2.split(",")[1]);
			ob.update(o2);
			break;
		case 3:
			System.out.println("enter delete EMPLOYEE_CODE");
			String s3=sc.next();
			Emp_ovr_det o3 =new Emp_ovr_det(s3.split(",")[0]);
			ob.delete(o3);
			break;
	}
	}


	
	

}
