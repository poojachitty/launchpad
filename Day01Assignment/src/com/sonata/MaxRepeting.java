package com.sonata;

public class MaxRepeting {
	
		public static void main(String args[]) {
			int[] a= {1,2,3,4,5,6,6,6,5};
			int maxcount=0,ele=0;
			
			for(int i=0;i<a.length;i++) {
				int count=1;
				for(int j=i+1;j<a.length;j++) {
			
			if(a[i]==a[j]) {
			count++;


			}
	}
	if(maxcount<count)	{
		maxcount=count;
		ele=a[i];
	}
		
	}
		System.out.println("max repeting vale is "+ele +" with counts "+ maxcount)	;
		}
}
