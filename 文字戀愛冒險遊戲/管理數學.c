#include <stdio.h>
#include <windows.h>

int lovelove;
int math (void){
	getch();
	system("cls");
	printf("�i�P���| �W�� �޲z�ƾǡj\n\n");
	printf ("������٨I���b�Q�ߪ��R�߮��]��\n\n");
	getch();
	printf ("�����M�T�_�o�M�o�n�B�ͻ��֪����n\n\n");
	getch();
	printf ("�o�̽�ۻ��֪��}�B���i�Ы�\n\n");
	getch();
	printf ("�ک��Y�Q�ݬݦo�A�o���Q...\n\n");
	getch();
	printf ("�o�]���b�ݧڡA�ڭ̲����ϩ����q�y�b�{�ʡC\n\n");
	PlaySound(TEXT("zzz.wav"),NULL,SND_FILENAME|SND_ASYNC);
	getch();
	printf ("�o�ɡA�Ѯv��۱q�e���B�飼�i�ЫǡA���_�F�ڭ̲��e������A�o�������b�ڨ��Ǫ���m�W�A�ڭ̬۵��@���C\n\n\n");
	getch();
	printf ("�R�{�}�l�F�L���ƾǩ_�ۤ��ȡA���ڭ̫o�Q�L�X�⪺�~��ҧl��\n\n");
	getch();
	printf ("�کM�k�Ĭ۵��A�ߤ������ӦP�a�Q�_�@�ӤH�A�L�O\n\n");
	getch();
	printf ("1.�����m�ߥͪ����a�E\n2.�C�K���A2��Jony J\n3.�гy��2020���򤣩�\n\n");
//	getch();
	int ans;
	scanf ("%d", &ans);
	if (ans == 1){
		PlaySound(TEXT("model.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		printf ("���ߵ���!!!\n\n");
		lovelove = lovelove + 20;
	}
	else if (ans == 2){
		PlaySound(TEXT("eggyellow.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		printf ("QQ �����F~");
		lovelove = lovelove - 10;
	}
	else if (ans == 3){
		PlaySound(TEXT("answrong.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		printf ("QQ �����F~");
		lovelove = lovelove - 10;
	}
	printf ("�A(�p)���n�P�ץثe��: %d\n\n", lovelove); 
	
}
