#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>
#include<windows.h>
#include<mmsystem.h>
#pragma comment(lib,"Winmm.lib")
#define SIZE 4


void getRandNum( int a[]);

int lovelove;

//�D�n�C�� 
void GameGuessNum(void){

	//�۰ʳ]�w�K�X 
	int ans[SIZE] = {0,9,8,5};
	getRandNum(ans); //�Q��function��K�X�s�Jans�}�C 
	
	//�L�X�C���W�h
	FILE *file = fopen("rule.txt","r");
	char rule[200];
	while(!feof(file)){
		memset(rule, 0, sizeof(rule));
		fgets(rule, sizeof(rule) - 1, file);
		printf("%s",rule);
	}
	fclose(file);
	printf("\n");

	//�}�l�C��
	
	
	int temp = 0; //�Ȧs�ϥΪ̿�J���� 
	int count = 0;
	int a, b, c, d; //���a��J�� �d�B�ʡB�Q�B�� ��� 
	int num[4] = {0}; //�N�|�ӼƦr�s�J�}�C 

	
	printf("�п�J�|�ӼƦr(�Ʀr���i����): ");
	scanf("%d", &temp);
	a = temp / 1000;
	b = temp % 1000 / 100;
	c = temp % 1000 % 100 / 10;
	d = temp % 1000 % 100 % 10;
	num[0] = a;
	num[1] = b;
	num[2] = c;
	num[3] = d;
	
	while (1){
		
		count++;
		//�P�_���X��A 
		int i = 0;
	    int count_a = 0; //�p��A���Ӽ�
	    int arr_a[4] = {99,99,99,99}; //�ȦsA���� 
    	for(i = 0; i < 4; i++){
		    if(num[i] == ans[i]){
			    count_a ++;
			    arr_a[i] = num[i];
		    }
	    }

	
	    //�P�_���X�� B 
        int n = 0, l = 0;
	    int count_b = 0; //�p��B���Ӽ�
	    int arr_b[4] = {99}; //�ȦsB���� 
    	for(n = 0; n < 4; n++){
	    	for(l = 0; l < 4; l++){
		    	if(num[n] == ans[l] && n != l){
		    		count_b++;
			    	arr_b[n] = num[n];
		    	}
	    	}
    	}

	
	//�L�X�X A �X B �M A ���� 
        printf("%d A %d B : ", count_a, count_b);
	    int j = 0;
    	for(j = 0; j < 4; j++){
		    if(arr_a[j] != 99){
			    printf("%d ",arr_a[j]);
	    	}
    	} 
    	if(count_a == 4){
    		PlaySound(TEXT("ding_wav.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	        Sleep(50000);
	        _getch();
		    printf("���߲q��!");
		    break; //�q���N���X�j�� 
	    }      
	    puts("");
	    
	    printf("�п�J�|�ӼƦr(�Ʀr���i����): ");
    	scanf("%d", &temp);
	    a = temp / 1000;
    	b = temp % 1000 / 100;
    	c = temp % 1000 % 100 / 10;
    	d = temp % 1000 % 100 % 10;
    	num[0] = a;
	    num[1] = b;
	    num[2] = c;
    	num[3] = d;
    } //end while �٨S�q��
    
    printf("\n�`�@�q�F%d��", count);
    //�ھڲq�����Ƶ������ 
    if(count<=5){
    	lovelove+=30;
    	printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	else if(count>5 && count<=7){
		lovelove+=20;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	else if(count>7 && count<=10){
		lovelove+=10;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	else{
		lovelove-=10;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
//	return 0;
} //end GameGuessNum

//���o�����ƪ��H���|�ӼƦr 
void getRandNum(int n[]){
	int i, j;	
	srand(time(NULL));
	for (i = 1; i <= SIZE; i++){
		do{
			n[i-1] = rand() % 10 ;
			for(j = 1; j < i; j++){
				if(n[i-1] == n[j-1]){
					break;
				}
			}
		}while(j!=i);
	}
}
