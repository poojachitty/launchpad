package com.sonata.Employee;



public class Manager extends Employee {
	 int hra, ta;
     Manager()
     {
         
     }
     Manager(int empId,String n, int sal, int h, int t)
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
     Manager m1 = new Manager(100,"Nikhil",20000,500,1500);
     System.out.println("Salary of Manager= "+m1.salCal());
}

}
