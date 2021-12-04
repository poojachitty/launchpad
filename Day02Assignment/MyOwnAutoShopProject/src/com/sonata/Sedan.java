package com.sonata;

public class Sedan extends Car {
	int length;
	public Sedan(int speed,double regularPrice,String color,int length) {
		super(speed,regularPrice,color);
		this.length=length;
		
	}
	public double getSalePrice() {
		if (length>20) {
			return -((0.05*super.getSalePrice())-super.getSalePrice());
	}
		else {
			return -( (0.1*super.getSalePrice())-super.getSalePrice());
		}
	}
	public static void main(String args[]) {
		Truck t=new Truck(200,200,"red",25);
		System.out.println(t.getSalePrice());
	}
}