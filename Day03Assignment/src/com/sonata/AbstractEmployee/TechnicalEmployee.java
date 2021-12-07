package com.sonata.AbstractEmployee;

public class TechnicalEmployee extends Employee {
	
	public double calSal() {
		double total = Employee.BasicPay + Employee.BasicPay * .12;
		return total;
	}
	

	@Override
	public String toString() {
		return "TechnicalEmployee [calSal()=" + calSal() + "]";
	}

}
