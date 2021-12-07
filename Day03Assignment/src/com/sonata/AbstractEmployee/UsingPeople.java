package com.sonata.AbstractEmployee;

public class UsingPeople {
	public static void main(String[] args) {
		Employee e = new Employee() {
			
			@Override
			double calSal() {
				
				return 0;
			}
		};
		e.setBasicPay(2000);
		
		TechnicalEmployee t = new TechnicalEmployee();
		System.out.println(t);
		Staff s=new Staff();
		System.out.println(s);
		
	}
}
