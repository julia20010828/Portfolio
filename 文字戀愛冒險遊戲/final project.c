#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <windows.h>
#include <string.h>

//��L�Hfunction���ŧi
void dayThree(void);
int friday_m(void);
int supper();
int thursday_n(void);
int snake(void);
int math (void);
int supper();
int end (void);

void script1();
void script2();
void shuffle(char *[16]);
void display(int[16]);
int showFace(int, int, int[16], char *[16]);
int calculus();

int lovelove = 0;

int main(void) {
	PlaySound(TEXT("game_start.wav"),NULL,SND_FILENAME|SND_ASYNC);
	printf("�w��Ө��ʷR�i���C��!\n\n�п�J�A���W�r:");
	char name[10] = "";
	gets(name);
	system("cls");
	
	printf("\n�� %s ", name);
	script1();//�L�X�Ĥ@�q�@�� 
	getch();
	script2();
	system("pause..");
	system("cls");
	
	
	//�C���}�l
	//�W�h���� 
	printf("��F�A���ѥh�W�Ҥ��e�A�ڨӪ���\"���ﯫ�ǲz�Q���ʷR�e�R!\"�a\n\n");
	printf("�W�h����:�@����J��Ӹ��X��½�P�A�O��C�i�P����m�A�N�P�ꦨ���@��NĹ�F(��ܪ��d�������|������)�C\n");
	printf("��J\"0 0\"���������C���C\n"); 
	printf("�V�ֱN�Ҧ��P�t�粒���A���᪺�ʱ��N�|�V���Q��!\n");
	
	int i;
	char *card[16];
	//�N�Ҧ��P��ܪ��r�Τ@�]�w��0 
	for(i = 0; i < 17; ++i){
		card[i] = "0";
	}
	//�H�����t�P���W������r 
	shuffle(card);
	
	int choice1 = 0, choice2 = 0;//���a��ܪ���Ӹ��X 
	int allDone = 0, totalTries = 0;
	int correct[16] = {0};//���}�C�������a��ܪ��d�P���X 
	
	while(allDone == 0){
		display(correct);//�i�ܥd�P�I�������a��ܸ��X 
		
		printf("��J��i�P�����X:");
		scanf("%d %d", &choice1, &choice2);
		
		//���b
		while((choice1>16||choice1<0) || ((choice2>16||choice2<0))){
			printf("�п�J���T�s��:");
			scanf("%d %d", &choice1, &choice2);
		}
		
		if(choice1 == 0|| choice2 == 0){//���a�������X�C�� 
			totalTries = 37;
			system("cls");
			break;
		}
		++totalTries;
		system("cls");
		
		allDone = showFace(choice1, choice2, correct, card);//�L�X���a��ܪ��P�W��������r 
		sleep(2);//�����a����ɶ��O�Хd�P����m�M����r 
		system("cls");
		
	}
	
	//�C�������A�p��n�P�� 
	if(totalTries <= 16)
		lovelove = 20;
	else if(totalTries <= 26)
		lovelove = 15;
	else if(totalTries <= 36)
		lovelove = 5;
	else
		lovelove = -10;
		
	printf("���߯}��!�A�ثe�ֿn���n�P��:%d�C\n", lovelove);
	system("pause..");
	
	lovelove += calculus();//�L�X�L�n���Ҫ��@�� 
	printf("���ѬO(1)!\n�A�ثe�ֿn���n�P��:%d�C\n\n", lovelove);
	
	//��L�H��function
	snake();
	dayThree();
	supper();
	math ();
	thursday_n();
	friday_m();
	end();
	return(0);
}

void script1(){
	FILE *fptr = fopen("script1.txt", "r");
	char str[100] = "";
	fgets(str, sizeof(str), fptr);
	while(!feof(fptr)){
		puts(str);
		fgets(str, sizeof(str), fptr);
	}
	fclose(fptr);
}

void script2(){
	FILE *fptr = fopen("script2.txt", "r");
	char str[100] = "";
	fgets(str, sizeof(str), fptr);
	while(!feof(fptr)){
		puts(str);
		fgets(str, sizeof(str), fptr);
	}
	fclose(fptr);
}

void shuffle(char *card[16]){
	char *face[8] = {"�Ƽb","�~�W","�M��","�Ѯv","����","����","�~�U","�ѵM"};
	srand(time(0));
	int i;
	for(i = 0; i < 8; ++i){
		int m1 = 0, m2 = 0;
		do{
			m1 = rand() % 16;
		}while(card[m1] != "0");
		card[m1] = face[i];
		
		do{
			m2 = rand() % 16;
		}while(card[m2]!= "0");
		card[m2] = face[i];
		
	}
}

void display(int correct[16]){
	
	int i;
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|   %2s   |   |   %2s   |   |   %2s   |   |   %2s   |\n", correct[0] == 0 ? "1" : " ", correct[1] == 0 ? "2" : " ", correct[2] == 0 ? "3" : " ", correct[3] == 0 ? "4" : " ");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|   %2s   |   |   %2s   |   |   %2s   |   |   %2s   |\n", correct[4] == 0 ? "5" : " ", correct[5] == 0 ? "6" : " ", correct[6] == 0 ? "7" : " ", correct[7] == 0 ? "8" : " ");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|   %2s   |   |   %2s   |   |   %2s   |   |   %2s   |\n", correct[8] == 0 ? "9" : " ", correct[9] == 0 ? "10" : " ", correct[10] == 0 ? "11" : " ", correct[11] == 0 ? "12" : " ");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|   %2s   |   |   %2s   |   |   %2s   |   |   %2s   |\n", correct[12] == 0 ? "13" : " ", correct[13] == 0 ? "14" : " ", correct[14] == 0 ? "15" : " ", correct[15] == 0 ? "16" : " ");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	if(i % 4 == 0){
		printf("\n");
	}
}

int showFace(int choice1, int choice2, int correct[16], char *card[16]){
	char *str1 = card[choice1-1];
	char *str2 = card[choice2-1];
	if(strcmp(str1, str2) == 0){
		++correct[choice1-1];
		++correct[choice2-1];
	}
	
	int choice[16] = {0};
	choice[choice1-1] = choice1;
	choice[choice2-1] = choice2;

	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n"); 
	printf("|  %s  |   |  %s  |   |  %s  |   |  %s  |\n", choice[0] == 0 ? "    " : card[choice[0]-1], choice[1] == 0 ? "    " : card[choice[1]-1], choice[2] == 0 ? "    " : card[choice[2]-1], choice[3] == 0 ? "    " : card[choice[3]-1]);
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|  %s  |   |  %s  |   |  %s  |   |  %s  |\n", choice[4] == 0 ? "    " : card[choice[4]-1], choice[5] == 0 ? "    " : card[choice[5]-1], choice[6] == 0 ? "    " : card[choice[6]-1], choice[7] == 0 ? "    " : card[choice[7]-1]);
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|  %s  |   |  %s  |   |  %s  |   |  %s  |\n", choice[8] == 0 ? "    " : card[choice[8]-1], choice[9] == 0 ? "    " : card[choice[9]-1], choice[10] == 0 ? "    " : card[choice[10]-1], choice[11] == 0 ? "    " : card[choice[11]-1]);
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("----------   ----------   ----------   ----------\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("|  %s  |   |  %s  |   |  %s  |   |  %s  |\n", choice[12] == 0 ? "    " : card[choice[12]-1], choice[13] == 0 ? "    " : card[choice[13]-1], choice[14] == 0 ? "    " : card[choice[14]-1], choice[15] == 0 ? "    " : card[choice[15]-1]);
	printf("|        |   |        |   |        |   |        |\n");
	printf("|        |   |        |   |        |   |        |\n");
	printf("----------   ----------   ----------   ----------\n");
	
	int i;
	for(i = 0; i < 16; ++i){
		if(correct[i] == 0){
			return 0;
		}
	}
	return 1;
}

int calculus(){
	system("cls");

	printf("�i�P���@ �W�� �L�n���j\n");
	PlaySound(TEXT("BellRing.wav"),NULL,SND_FILENAME|SND_ASYNC);
	_getch();
	printf("\n�}�ǲĤ@��~~~\n\n�کM�B�ͤ@�_��1019�W��\n\n");
	_getch();
	printf("�L�n���Y���M�����A�ڦb�}�ǲĤ@�ѡA�o���i�ЫǪ������N��|��F\n\n���Ӥk���髬�ֲӡA�e���M�q�A���嶮");
    _getch();
	printf("\n\n�ڭ�誱�����ﯫ�ǲz�Q���e�R�@�I�]����!�ڪ��z�Q���N�O�o!");
	PlaySound(TEXT("Tornado.wav"),NULL,SND_FILENAME|SND_ASYNC);
	_getch();
	
	FILE *fptr = fopen("calculus.txt", "r");
	char str[100] = "";
	fgets(str, sizeof(str), fptr);
	while(!feof(fptr)){
		puts(str);
		fgets(str, sizeof(str), fptr);
	}
	fclose(fptr);
	
	int choice = 0;
	printf("�п�J�A�����:");
	scanf("%d", &choice);
	if(choice == 1){
		system("cls");
		PlaySound(TEXT("anscorrect.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	    _getch();
		printf("����F!");
		return 10;
	}else{
		system("cls");
		PlaySound(TEXT("answrong.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	    _getch();
		printf("�����F!");
		return 0;
	}
	
}
