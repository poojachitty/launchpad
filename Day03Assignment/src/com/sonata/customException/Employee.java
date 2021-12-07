package com.sonata.customException;



public class Employee {
	int empid;
	String empname;
	int empsal;
	 Employee(int id, String name, int sal){
		this.empid = id;
		this.empname= name;
		this.empsal=sal;
		}
		
	public void salcal() {
		
     try {
			
			if(empsal<100000)
				throw new Exception("salary is less");
		}
		catch(Exception e) {
			System.out.println(e);
		}
     
	    
	}
	public void display() {
		System.out.println(empid);
		System.out.println(empname);
		System.out.println(empsal);
	}
	public static void main(String args[]) {
		
		Employee e1=new Employee(12,"pree",60);
		e1.display();
		e1.salcal();
		
				
	}
}
