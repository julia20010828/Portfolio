#include <stdio.h>
#include <time.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>

int lovelove;
void rule();

int timer(void)
{
	int heartBeat, totalTime;
    time_t t1, t2;
    //���}�C���W�h 
    rule();
    //�C���}�l 
    printf("�Ы��U���N����ܤk�ͥثe�߸̩ҷQ�Ʀr\n");
    getch();
	printf("�k�ͥثe�߸̩ҷQ�Ʀr��: "); 
    srand(time(NULL));
    heartBeat = (rand() % 10) + 10;
    printf("%d\n\n", heartBeat);
    printf("�Ы����N��}�l�p��\n\n");
    getch(); //�}�l�p�� 
    t1 = time(NULL);
    printf("�}�l�p��...\n\n");
    printf("�Ы����N�䵲���p��\n\n");
    
    while(1){
    	if(kbhit() != 0){
    		break;    		
		}
	}

    t2 = time(NULL); //�����p�� 
	totalTime = (int)difftime (t2, t1); //�p��ɶ��t 

    printf("�A(�p)�w�����ɶ��� %d ��\n", totalTime);
    
    if(totalTime <= heartBeat + 5 && totalTime >= heartBeat - 5){
    	lovelove = lovelove + 30;
    	printf("�P�ǫܼF�`���I������o�n�P��30���I\n\n");
    	printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	else if(totalTime <= heartBeat + 10 && totalTime >= heartBeat - 10){
		printf("�P���٤������I������o�n�P��20���I\n\n");
		lovelove = lovelove + 20;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	else{
		printf("�P�ǰڡI�t�Ӧh�o��A(�p)�o�ˬO�l����k�B�ͪ�:) (��o�n�P��10��)\n\n");
		lovelove = lovelove + 10;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	printf("�Ы��U���N�䵲���C��...");
	getch();
	while(1){
		if(kbhit() != 0)
			break;
	}
}
//�C���W�h��function 
void rule(){
	FILE *fptr = fopen("timer_rule.txt", "r");
	char str[100] = {0};
	fgets(str, sizeof(str), fptr);
	while(!feof(fptr)){
		puts(str);
		fgets(str, sizeof(str), fptr);
	}
	fclose(fptr);
}
