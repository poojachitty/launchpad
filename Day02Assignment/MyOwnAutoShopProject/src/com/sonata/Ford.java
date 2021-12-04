package com.sonata;

public class Ford extends Car {
	int year;
	int manufacturerDiscount;
	
	
	public Ford(int speed,double regularPrice,String color,int year,int manufacturerDiscount) {
		super(speed,regularPrice,color);
		this.year=year;
		this.manufacturerDiscount=manufacturerDiscount;
	}
	public double getSalePrice() {
		return super.getSalePrice()-manufacturerDiscount;
	}
	public static void main(String args[]) {
		Ford t=new Ford(200,200,"red",2018,50);
		System.out.println(t.getSalePrice());
	}

}
