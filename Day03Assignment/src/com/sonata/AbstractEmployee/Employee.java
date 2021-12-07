package com.sonata.AbstractEmployee;



public class Employee {
	int employeeId;
	  String employeeName;

	  static double BasicPay;
	  Address ob;
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public double getBasicPay() {
		return BasicPay;
	}
	public void setBasicPay(double basicPay) {
		BasicPay = basicPay;
	}
	public Address getOb() {
		return ob;
	}
	public void setOb(Address ob) {
		this.ob = ob;
	}
	@Override
	public String toString() {
		return "Employee1 [employeeId=" + employeeId + ", employeeName=" + employeeName + ", BasicPay=" + BasicPay + ", ob="
				+ ob + "]";
	}
	double calSal() {
		// TODO Auto-generated method stub
		return 0;
	}

}
