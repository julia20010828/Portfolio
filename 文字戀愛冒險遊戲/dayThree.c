#include<stdio.h>
#include <windows.h>

int lovelove;
void GameGuessNum(void);

void dayThree(void){
	
	//�ŧi�@�ӼȦs�ϥΪ̦^�Ъ��ܼ� 
	char reply = NULL, garbage;
	
	//�ĤG��(�ۨ��ۻy)
	getch();
	system("cls");
	printf("\n�i�P���G �W�� ���ҡj\n");
	printf("\n�T�Ӥp�ɪ����ҡA�֤F�o�����E�u�O�O�H�����_�l�A�����D����o���b��B?\n�O�_�]�M�ڤ@�˥�Ū�ۧE�����ٹ|��l�W���֡A�p�G�i�H�A���@�����u���o�Ч@���֤H�C\n");
	getch();
	//�ĤT�Ѧ��W(�p����) 
	PlaySound(TEXT("alarmClock.wav"),NULL,SND_FILENAME|SND_ASYNC);
    _getch();
	printf("\n�i�P���T �W�� �p���ҡj\n");
	printf("\n�V�|!�Q�ѥ��q�ʥ��ӱߤF�A������ɭԬݬݮɶ�...�p�ҳ������F!!!\n");
    getch();
	printf("\n�{�b�i�ЫǤ]�������F�a...\n");
	getch();
	printf("\n���ޤF!�ڤw�g�W�L24�p�ɨS������o�F�A�N��O�b�������a��ݦo�X���]�n�C\n");
	getch();
	printf("\n(�i�Ыǫ�)\n�Ѱ�!���Ѥ]�Ӧh�H�ӤW�ҤF�a!\n");
	getch();
	printf("\n(�|�B�i��j���y��A��M�߸��|�F�@��)\n�o�٬O�@�˥i�R�O~�ٵ����A�o�����䨺�O...�Ŧ�!!!!\n");
	getch();
	printf("\n�Ѱ�!�٦n���Ѧ���!������w�ߦܷ��B�����h�V�o�@�����ɭԡA�ݨ��o�����Y�L�L�@�١A��ӬO3051�������S�_�F�C \n");
	getch();
	printf("\n�i�i�J�C���j \n�����p�������a��ip��}�̫�|�X�ﱼ�F�A�Q���o���T��ip��}�A�N�����i�J�C���}�ѳo�ձK�X!\n�i�J�C���iY�j �P�ڦ�z�iN�j\n ");
	
	//Ū���ϥΪ̦^�� 
	scanf("%c", &garbage);
	scanf("%c", &reply);
	if(reply == 'y'|| reply == 'Y'){
//		GameGuessNum();
        printf("\n�i�J�C��\n");
        GameGuessNum();
        reply = '\0';
	}
	else {
		printf("\n�t�@��P�ǰ��W�}�ѤF�K�X�åB������a�����Ѯv�����A�A�o�{�o�Τ@�اA�q�ӬݹL�������`���ۨ���P�ǡA�߸̫ܤ��O����...\n");
		printf("\n�n�P��-20\n");
		lovelove-=20;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
        reply = '\0';
	}
	
	//�ĤT�ѤU��(���h0052�W�|�p��ߪ����W)
	getch();
	system("cls");
	printf("\n�i�P���T �U�� �|�p��߽ҡj\n");
	printf("(���h0052�����W)\n");
	printf("\n���K�S�n�W�]���U�Ъ���߽ҤF�A�]���U�Х[�W�a���|�p�A�������~��b�o�ӪŶ��̪��]�N�u���o�F�a�C\n") ;
	getch();
	printf("\n�����D�o�ӤW�ҤF�S? �iY�j�iN�j\n ");
	scanf("%c", &garbage);
	scanf("%c", &reply);
	if(reply == 'y' || reply == 'Y'){
		PlaySound(TEXT("anscorrect.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	    _getch();
		printf("\n����F!�o�ܷǮɪ��i�F�Ы�!\n�n�P��+5\n"); 
		lovelove+=5;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
	else if (reply == 'n' || reply == 'N'){
		PlaySound(TEXT("answrong.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	    _getch();
		printf("\n�����F!�o�ܷǮɪ��i�F�Ы�!\n�n�P��-5\n");
		lovelove-=5;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	}
}
