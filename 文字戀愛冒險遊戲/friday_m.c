#include <stdio.h>
#include <windows.h>

int lovelove;
int timer(void);

int friday_m(void){
	
	char choice, garbage;
	getch();
	system("cls");
	printf("\n\n\n�i�P���� �W�� �p����߽ҡj\n");
	getch();
    printf("�P�������W10�G10�A"
	"�O�ڸ�ڪB�ͤ@�_�h�W�p����ߪ��ɶ��A"
	"�ڦn�Q�߽Ұ�...�C���O����!!!�ڮ��䧤�ۦo�A�Ӭ��F�o�u�ȻP�o�۳B���ɶ��A�ڤ��Ѥ@�w�n�h�W��!!!!\n\n");
	getch();
	printf("�]���i�Ыǧ��U�A�ݬݥ��䨺�ӪŪŪ���m�^"
	"�o�٨S�ӶܡH��...�S���o�b���ЫǡA�u�O�@�����]���Q�ݡA"
	"����ɭԤ~�i�H�ݨ�o�����v�O�H�ڦn�Q�o��...\n\n");
	getch();
	printf("�]�o��...�q���B�ǨӤF�^���n�^"
	"�o�ӤF�o�ӤF!!!�ڤ��Ѥ@��Ѫ��ּ֬u���ש�ӤF�A"
	"�u�n�ݨ�o�A��ı�o�ڤS���Τ������믫�A�W�Q���߽ҳ��S���D�C\n\n");
	getch();
	printf("(�Y�쪺��Ӥp�ɵ{���a����)���Ѫ���߽Ҥj���O�ڤ@�ͤ��̩��֪���l�F�A"
	"���M�ڵ{���@�Ӧr�]�S���X��(�p�n)�A"
	"���O!�o�]���S�a�q�������Y��ڭɤF�q��!!!"
	"���U�A����ɹq���A��x�q���e�o�ڳ��@�N�C"
	"�ӥB��O�H�}�ߪ��O!!!�ٵo�ͤF�@�����ڤ߰ʤ��w���Ʊ�...\n\n");
	getch();
	printf("(�^�Ф�)��ڭ̳��M�`�b�ۤv�q���W���{���ɡA�֤]�S�`�N��کM�o����y�������۾a��...\n\n");
	getch();
	PlaySound(TEXT("heartBeat.wav"),NULL,SND_FILENAME|SND_ASYNC);
	_getch();
	printf("�ڡG��I��...�藍�_�A��...�ڤ��O�G�N�I��p���]�ڰڰڰڤ��p�߸I��F�A�ڭ̤�����M���F�߹q�P��>///<�^\n\n");
	getch();
	printf("�o�ɡA�ʷR�����S�X�{�F�A"
	"͢���G�u�Q���D�o�ߤ��ҷQ�ܡH���N�����ڪ��D�ԧa!"
	"�p�G�A(�p)�w�����ɶ���o�߸̩ҷQ�Ʀr�@�ˡA�i�H���A(�p)��o�h�������|��v\n"
	"�iY�j�����D��\n" 
	"�iN�j����n�`�۳�\n");
	printf("�H");
	scanf("%c", &garbage);
	scanf("%c", &choice);
	
	if(choice == 'Y' || choice == 'y'){ //���Y��y 
		timer();
		printf("\n\n(�^�е���)�o�����|�ڤ@�w�n�n�n�ⴤ�A���ަp��A�ڳ��n���X�ڤߤ���o���Pı�A�ڤ@�w�n��ڪ��߷N�ǹF���o�I�I\n");
	}
	else if(choice == 'N' || choice == 'n'){ //���N��n 
		printf("\n�A(�p)���h�F���D�o�O�_����A(�p)�ʤߪ����|(�n�P��-20)\n\n");
		getch();
		printf("(�^�е���)\n");
		lovelove = lovelove - 20;
		printf("�A(�p)���n�P�ץثe��: %d", lovelove);
	}
}
