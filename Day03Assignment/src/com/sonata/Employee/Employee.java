package com.sonata.Employee;

public class Employee {


	
		int empId;
		String empName;
	    int empSal;
	    Employee(int i,String j,int k)
	    {
	       this.empId=i;
	       this.empName=j;
	       this.empSal=k;
	    }
	    Employee ()
	    {
	        
	    }
	    int salCal()
	    {
	         return empSal;
	    }
	}




