package com.sonata;

public class Truck extends Car {
	int weight;
	public Truck(int speed,double regularPrice,String color,int weight) {
		super(speed,regularPrice,color);
		this.weight=weight;
	}
	public double getSalePrice() {
		if (weight>2000) {
			return -((0.1*super.getSalePrice())-super.getSalePrice());
	}
		else {
			return -( (0.2*super.getSalePrice())-super.getSalePrice());
		}
	}
	public static void main(String args[]) {
		Truck t=new Truck(200,200,"red",2500);
		System.out.println(t.getSalePrice());
	}
}