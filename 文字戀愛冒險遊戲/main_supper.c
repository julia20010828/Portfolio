/************ �d�]�@�� *************/
#include <stdio.h>
#include <windows.h>

int lovelove;

int supper(){
	getch();
	system("cls");
	printf("�i�P���T �ߤW�j\n\n");
	PlaySound(TEXT("alarmClock.wav"),NULL,SND_FILENAME|SND_ASYNC);
	printf("21:49...\n");
	getch();
	printf("�u�O���F�@�U�A���N�i�H�Y�d�]�F...\n");
	getch();
	printf("��!��߽Ү�ť��o�n�M�B�ͥh�s�a...\n");
	getch();
	printf("�ڶR�I�����h��o���J�n�F!\n");
	getch();
	
	system("cls");
	printf("�i���o���G�j\n\n");
	getch();
	printf("�ڬO�ʷR���p���FXD\n");
	getch();
	printf("�n���פk���Q���Y���F��\n");
	getch();
	printf("�N���a�p�C���@��\n");
	getch();
	printf("�p���F��a�p�о�:\n");
	getch();
	printf("step1: ��ܤ@�Ӯ�l�A���O��J�n1.�}�� 2.���O�� 3.�Ѱ��O��\n");
	getch();
	printf("step2: ����J�C��(Enter)�A��J���(Enter)\n");
	getch();
	printf("��l�̥X�{���Ʀr�N�O��l�P�򦳪��a�p�Ƴ�!\n");
	getch();
	printf("�@�_���פk�����p�I�a!FIGHTING!\n");
	printf("�Ы����N����o���G...\n");
	printf("loading...\n");
	getch();
	
	// game over = 0; complete = 1;
	int game = 0;
	game = game_bomb(game);
	
	if(game == 0){
		lovelove -= 30;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove); // --------------------------------------------------->-30
		
		int choice = 0; // 1: yes; 2: no;
		printf("�@�⭻��}�a�F���������šA�]�}�a�F�o������\n\n<<�n�A���@����?>>\n\n");
		printf("(1: yes 2: no)\n");
		printf("Enter the number: ");
		scanf("%d", &choice);
		switch(choice){
			case 1:
				printf("\n�H�ͬO�S���ĤG�����|��\n");
				getch();
				printf("���A�i�H�D�ڤp���F\n\n<<�D�p���F?>>\n\n");
				int secondChoice = 0;
				printf("(1: yes 2: ���N���n�F)\n");
				printf("Enter the number: ");
				scanf("%d", &secondChoice);
				game = game_bomb(game);
				
				// ���� 
				if(game == 0){
					// �j�j�D�F�p���F 
					if(secondChoice == 1){
						lovelove += 10; // ------------------------------------>+10
					}
					// ���N���F�p���F 
					else if(secondChoice == 2){
						lovelove += 20; // ------------------------------------>+20
					}
					
					printf("�����٬O�n������?!!\n");
					getch();
					printf("���ݦb�A�D�F���p���F�����W...");
					getch();
					printf("���A�h���@�ǭ���...\n");
					getch();
					printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
					printf("�k��: ��!�ڭn����w���檺�H���K�q!\n");
					printf("�I�譻�檺�o�]�n�i�R...\n\n\n");
				}
				break;
			case 2:
				printf("�k��: ��!�ڭn����w���檺�H���K�q!\n");
				printf("�I�譻�檺�o�]�n�i�R...\n\n\n");
				break;
			default:
				break; 
		} // end switch
	}
	else if(game == 1){
		lovelove += 30;
		printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove); // ------------------------------------------------->+30
		
		int choice = 0;
		printf("�k��: �z!�o�a�����n�n�Y��!\n");
		printf("�k��: �A�n���n�Y�I���jۣ?\n\n");
		printf("(1: yes 2: no)\n");
		printf("Enter the number: ");
		scanf("%d", &choice);
		switch(choice){
			case 1:
				lovelove += 10;
				printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove); // ----------------------------------------->+10
				
				printf("\n�k��: ��!�e�l�u���@��C...\n");
				printf("�k��: �A�����N�f���a!\n");
				printf("�k: ��!��----------\n\n");
				printf("(��a���֦�)\n");
				break;
			case 2:
				lovelove += 20;
				printf("�A(�p)���n�P�ץثe��: %d\n\n", lovelove); // ----------------------------------------->+20
				
				printf("\n�k��: ��...�u�i��...\n");
				printf("�k��: (�@�y���֦a��Ҧ����jۣ�e�J�f)");
				printf("�k��: ����!�h�´ګ�!\n\n");
				printf("(��a���֦�)\n");
				break;
			default:
				break;
		} // end switch
	} // end else
} // end supper
