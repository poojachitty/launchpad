package com.sonata.Employee;


public class Tester extends Employee {
	 int hra, ta;
     Tester()
     {
         
     }
     Tester(int empId,String n, int sal, int h, int t)
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
     Tester t1 = new Tester(1001,"poo",20000,100,500);
     System.out.println("Salary of Manager= "+t1.salCal());
}
}
