#include <stdio.h>
#include <windows.h>

int lovelove;

int thursday_n(void){
	
	int a1, a2, a3;
	getch();
	system("cls");
	printf("\n\n�i�P���| �ߤW ����j\n");
	printf("�S�O��ڪB�ͤ@�_�h�W���㪺��l�A"
	"�u�����D����ɭԤ~�i�H��߻����o�@�_�h�W�O�H"
	"�ӥB�A�o�P���]���Ӧ��S�����R���W���X���@�~�A�|���|�Q�R���Q���ڡH"
	"�󭫭n���O�A�|���|�Q�o�H���ڬO����@�~���a�ǥͰڡH"
	"�ڰڰڦn�·СA�����D�N���n�Ӻ���F�A���ڦۤv��·СA"
	"���M�i�H�ݨ�o�A���O�ڲ{�b�u��ߧڦn���e���إ߰_�Ӫ����u�ͧζH�|�b�o���e�Y���ڡH"
	"����I�I�I�������o�بƱ��o�͡A���@�U��Kahoot���ɭԡA�ڤ@�w�n�n�n��{���o�ݡI\n\n");
	getch();
	printf("���D�G�Ы����D�حn�D�����Ǽg�X�������ת��s��\n\n");
	printf("�D�ءG��e���Ҧb�h�Ū��W�@�h�� ---> ��e���Ҧb���h�� ---> �ڥؿ�\n\n");
	PlaySound(TEXT("Kahoot.wav"),NULL,SND_FILENAME|SND_ASYNC);
	_getch();
	printf("�ﶵ �G(1)./    (2)/    (3)../\n\n�H");
	scanf("%d %d %d", &a1, &a2, &a3);
	
	if(a1 == 3 && a2 == 1 && a3 == 2){
		PlaySound(TEXT("anscorrect.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		printf("\n���ߵ���I�A�]�p�^�n�δΡA���oı�o�A�]�p�^�O�N�⤣��@�~���Z�٬O�ܦn���o���ǥ͡]�n�P��+10�^\n\n");
		lovelove = lovelove + 10;
		printf("�A(�p)���n�P�ץثe��: %d", lovelove);
	}
	else{
		PlaySound(TEXT("answrong.wav"),NULL,SND_FILENAME|SND_ASYNC);
	    _getch();
		printf("\n�A�]�p�^�����F�I�A�]�p�^�èS���n�W�Ʀ�]���e�T�W�A���h�F���s�إ��u�q�ζH�����|�]�n�P��-5�^\n\n");
		lovelove = lovelove - 5;
		printf("�A(�p)���n�P�ץثe��: %d", lovelove);
	}
}
