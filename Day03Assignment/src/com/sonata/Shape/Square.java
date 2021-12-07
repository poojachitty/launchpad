package com.sonata.Shape;



public class Square extends Shape {

	double length;
	
	
	Square(double l){
		this.length=l;
		
	}
	public double getArea() {
		return length*length;

}
	public static void main(String[] args)
	{
	     Square s = new Square(3.0);
	     System.out.println("area of square= "+s.getArea());
	}	
}
