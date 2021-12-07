package com.sonata.Employee;

public class Developer extends Employee {
	 int hra, ta;
     Developer()
     {
         
     }
     Developer(int empId,String n, int sal, int h, int t)
     {
          super(empId,n, sal);
          hra = h;
          ta = t;
     }
     int salCal()
     {
          return (super.salCal()+hra+ta);
     }


public static void main(String[] args)
{
     Developer d1 = new Developer(1001,"poo",20000,100,1500);
     System.out.println("Salary of Manager= "+d1.salCal());
}
}
