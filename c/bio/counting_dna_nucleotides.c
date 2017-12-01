/* Problem Link : http://rosalind.info/problems/dna/ */
#include<stdio.h>

int main(){
	int A=0;
	int C=0;
	int G=0;
	int T=0;
	int i=0;	
	char inp[100];	
	printf("Enter Your Input : ");
	scanf("%s",&inp[i]);
	int size =strlen(inp);
	
	for(i=0;i<size;i++){
		if(inp[i]=='A'){
			A++;	
		}
		else if(inp[i]=='C'){
			C++;	
		}
		else if(inp[i]=='G'){
			G++;	
		}
		else if(inp[i]=='T'){
			T++;	
		}		
	}	
	printf("%d %d %d %d",A,C,G,T);	
}
