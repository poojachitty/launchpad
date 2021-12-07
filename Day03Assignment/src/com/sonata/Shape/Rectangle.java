package com.sonata.Shape;



public class Rectangle {
	double length;
	double height;
	
	Rectangle(double l,double h){
		this.length=l;
		this.height=h;
	}
	public double getArea() {
		return length*height;

}
	public static void main(String[] args)
	{
	     Rectangle r = new Rectangle(3.0,5.0);
	     System.out.println("area of rectangle= "+r.getArea());
	}	

}
