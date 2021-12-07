package com.sonata.Shape;



public class Triangle extends Shape {
	double base;
	double height;
	
	Triangle(double b,double h){
		this.base=b;
		this.height=h;
	}
	public double getArea() {
		return (0.5*base*height);

}
	public static void main(String[] args)
	{
	     Triangle t = new Triangle(3.0,5.0);
	     System.out.println("area of trainagler= "+t.getArea());
	}

}
