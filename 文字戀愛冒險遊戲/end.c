#include <stdio.h>
#include <windows.h>

int lovelove;

int end (void){
	
	printf("\n\n�i�P���� �ߤW �����j\n");
	puts("�g�L�F�X�Ѫ��۳B�A�A���ղ{�b�N�O�X�����ɭԤF....\n\n");
	getch();
	printf("�����a�A�ݨ��o�V�A����...");
	PlaySound(TEXT("light.wav"),NULL,SND_FILENAME|SND_ASYNC);
	_getch();
	puts("�A�զ⪺�L�S�W��Ũ�o�o�b�w�w���y��[����i�H�A�ڷPı��{�l�̦����d�W�U�������b�����_�R�C\n\n" 
		 "�@�}�����عL�A�Ů𤤧��a�۪����F�j�����Ш��A�٦��o�Y�v������A"
		 "���@�Y�Q�G���q�v�����b�o���ӤW�A�ک��զۤv���w�ﲴ�e���o�L�k�۩�......\n\n ");
	printf("�i�I�����N��M��n�P�� �i�J�����j \n\n");
	getch();
	printf("�n�P�� : %d\n\n", lovelove);
	getch(); 
	if(lovelove <= -69){
//		getch();
		PlaySound(TEXT("QQ.wav"),NULL,SND_FILENAME|SND_ASYNC);
		printf("�i����5�j\n");
		
	    _getch();
		puts("�u���......�ڳ��w���O�A���B�ͣ�......�ڤ��ҥH���b�A���䤣�L�N�O���F�i�H����L�}�F!�v\n");
		puts("�u��...�����L�n������ѩO?�޲z�ƾǥR���{��������O?�p����߽Ҫ��߸��[�t�O? �v\n");
		puts("�u���ǳ��O���F����h�ݧA�B�ͤ@����!!���M�A�H���O?�v\n");
		puts("�u���|......�v\n");
		puts("�ڲĤ@�����R���٥��ު޴N�w�g�\��F......�C");
	}
	else if(lovelove <= 2 && lovelove >= -68){
//		getch();
		printf("�i����4�j\n");
		PlaySound(TEXT("QQ.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		puts("�u���§A(�p)�����w�A���O...���n�N��!!!�ڤw�g���߻�����H�F!!�v \n");
		puts("�u��...�O�O�ܡH��...�ڥi�H���D�O�ֶܡH�v \n");
		puts("�u�A(�p)�ٰO�o�C���W�ҳ����ڤ@�_�������Ӥk�ͶܡH�o�N�O�ڳ��w���H�v\n");
		puts("�u��...��ӬO�o�˰�...�v\n");
		puts("�ک~�M�S���`�N��o�̨�H�����ǬN���p�ʧ@�A�H�Φo�C������o���y�W���_�����e���e�A�گu�O�ӥ��ѤF... ");
	}
	else if(lovelove <= 74 && lovelove >= 3){
//		getch();
		printf("�i����3�j\n");
		PlaySound(TEXT("hebe.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		puts("�k�ķP���A���o�I�X���@���A�i�O�o�٨S���ǳƦn�i�J�@�q�ʱ�... \n");
		puts("�u�ڭ�...�٬O�n�B�ͧa?�v\n");
		puts("�A�ݵ۲��e�o�i�ϧA�����A�˪��y�e�A�j�j���X�@���L�� \n");
		puts("�u��M�o~�����Ѩ��a�v");
	}
	else if(lovelove <= 146 && lovelove >= 75){
//		getch();
		printf("�i����2�j\n");
		PlaySound(TEXT("aini.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		puts("�ڹ��_�i��i�դF�A�k�ķL���ۡA�`�۪��I�I�Y�C\n"
			 "�ڥû��Ѥ��F�b�i����ģ�U���R�ʤH���o�A�H�Χڲo�_�o����ɡA�o���ߪ��y�e�C\n"
			 "�ڲש���F�A�ʷR�������§A�C\n");
	}
	else if(lovelove >= 147){
//		getch();
		printf("�i����1�j\n");
		PlaySound(TEXT("destiny.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		puts("�A���D��?�ڨ��b��e�d�]�ɴN�R�W�A�F��..."
		"�ݨ�A���y���Y�������@���@�����A�ڴN�w�g�`�`�I�_�A"
		"�L�n���V�A�f�ܡB�|�p�Ҹ˧@�ܧN�B�p�����_�������B�|�p��߻��n�h�s�a�B�p����߸I�A����y�A"
		"�����O�ڪ���ߵ��e�A�ڬO�A�R�����R���A��ڱa���a!");
	}
	system("pause");
}
