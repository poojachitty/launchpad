package com.sonata.AbstractEmployee;

public class Staff extends Employee {
	public double calSal() {
		double total = Employee.BasicPay + Employee.BasicPay * .18;
		return total;
	}

	@Override
	public String toString() {
		return "Staff [calSal()=" + calSal() + "]";
	}

}
