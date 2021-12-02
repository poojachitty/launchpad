package com.sonata;

public class SpecificValue {
	public static void main(String args[]) {
		int[] a= {1,2,3,4,5};
		int find=5;
		boolean found=false;
		for(int i=0;i<a.length;i++) {
			if(i==find) {
				found=true;
				break;
			}
		}
		if(found) {
			System.out.println("contains "+find);
		}
			else {
				System.out.println("does not contain");
				
			}
		}
		
	}


