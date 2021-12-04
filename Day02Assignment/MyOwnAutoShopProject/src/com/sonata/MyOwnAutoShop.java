package com.sonata;

public class MyOwnAutoShop {
	public static void main(String args[]) {
		Truck t=new Truck(200,200,"red",2500);
		System.out.println(t.getSalePrice());
		Ford t1=new Ford(200,200,"red",2018,50);
		System.out.println(t1.getSalePrice());
		Truck t2=new Truck(200,200,"red",25);
		System.out.println(t2.getSalePrice());
	}

}
