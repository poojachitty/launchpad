package com.sonata;

public class LargeNumbers {
	
		public static void main(String args[]) {
			int[] a= {1,2,3,4,5,6,6};
			int max=a[0];
			for(int i=0;i<a.length;i++) {
				
			if(a[i]>max)
			max=a[i];


	}
			System.out.println("large number is"+max);
	}
	}
