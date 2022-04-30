#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>
#include <conio.h>
#include <time.h>
#include <ctype.h>
#include <time.h>
#include <windows.h>
#include <process.h>

#define UP 72
#define DOWN 80
#define LEFT 75
#define RIGHT 77

int length;
int bend_no;
int len;
char key;
int life;
int breakers = 1;
int lovelove;

// function declaration
void Delay(long double);
void Move();
void Food();
int Score();
void Print();
void gotoxy(int x, int y);
void GotoXY(int x,int y);
void Bend();
void Boarder();
void Down();
void Left();
void Up();
void Right();
void ExitGame();


struct coordinate{
    int x;
    int y;
    int direction;
};

typedef struct coordinate coordinate;

coordinate head, bend[400], food, body[30];

// function main begins program execution

int snake(void){
	int score;
	printf("�i�P���@ �U�� �|�p�ǡj\n\n");
	printf("�����۸Ȥl�[�D�c���i�ЫǡA�@�仡��:�u�~���n����!�A�̦��S���}�N���?�n����!�v���ۧ�N��ը�18��......\n\n");
   	getch();
   	printf("�ڬݵۤk�ķ��o�ݡB�����i���G�@��j���ˤl�A�ϧڪ����ߥͰ_�F�Q��U�~�M���L���İʡA�o�ɡA�ʷR�����X�{�F!!\n\n");
   	getch();
   	printf ("�i�D��:�Y�A���������A�ڴN�N�ɶ��Ȱ��A�u�����k�ĩM�A�i�H���D�o�����o�ͤF�ƻ�ơA��ɭ�...\n\n");
    getch();
    printf ("�A�Q�F���N�F����~~~\n\n");
    getch();
    printf ("�A�@�N�����D�Զ�? (Y = 1 or N = 2)\n");
    
    char option;
    char key;
    scanf ("%d", &option);
    if (option == 1){
    	Print();
    	system("cls");
    	length = 5;
    	head.x = 25;
    	head.y = 20;
    	head.direction = RIGHT;
    	Boarder();
    	Food();  
    	bend[0] = head;
    	Move();   
    	score = length - 5;
    	if (score <= 4){
    		lovelove = lovelove + 10;
    		printf ("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
		} // end inner if
		else if (score >= 5 && score <= 9){
			lovelove = lovelove + 20;
			printf ("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
			printf ("(�ɶ��Ȱ���......)\n\n");
			getch();
			printf ("�k�Ĭݨ����k�ġA�p���l��V�o���ӡA�{�M�߰ʡA�ߤ���L���n�P�פS�h�F�X���C\n\n");
			getch();
		} // end inner else if
		else if (score >= 10){
			lovelove = lovelove + 30;
			printf ("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
			printf ("(�ɶ��Ȱ���......)\n\n");
			getch();
			printf ("�k�Ĭݨ����k�ġA�p���l��V�o���ӡA�{�M�߰ʡA�ߤ���L���n�P�פS�h�F�X���C\n\n");
			getch();
		} // end inner else if
    } // end outer if
	else if (option == 2){
    	printf ("�A�{�b�樭�گu�����N�~...\n\n"); 
    	lovelove = lovelove - 20;
    	printf ("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
	} // end outer else if
	
	printf ("�o�ɡA����}�l�F�o���O�Ѯɶ��A�����p���N�~�@�몺��r�A���j�a�ݱo���Ἲ�áB�Y�w�دt�C\n\n");
	getch();
	printf ("�u�ҵؤp�j�A���n��ı!�v\n\n");
	getch();
	printf ("�u���I�b�ڬO���٬O�U?�v\n\n");
	getch();
	printf ("�o���ʷR�����S�X�{�F�A�ݧ�:\n\n");
	getch();
	printf ("�A�n�^����?����i�H�[����~~ (Y = 1 or N = 2) \n");
	
	int ans;
	int choice;
	scanf("%d", &choice);
	if (choice == 1){
		printf ("�A�����׬O (1)��(2)�U??\n");
		scanf ("%d", &ans);
		if (ans == 1){
			lovelove = lovelove - 10;
			PlaySound(TEXT("answrong.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	        _getch();
			printf ("�^�����~!!\n�W�ҭn�M��!!\n\n"); 
		} // end inner if
		else if (ans == 2){
			PlaySound(TEXT("anscorrect.wav"),NULL,SND_FILENAME|SND_ASYNC);
//	        _getch();
			printf ("�^�����T!!!\n\n");
			lovelove = lovelove + 10;
	    } // end inner else
	} // end outer if
	else if (choice == 2){
		lovelove = lovelove - 20;
		printf ("���ǧA�{�b��...�樭...\n\n");
	} // end outer else if
	printf ("�A(�p)���n�P�ץثe��: %d\n\n", lovelove);
} // end function main

// function definition
void Move()
{
    int a, i;
    do{
        Food();
        fflush(stdin);
        len = 0;
        for (i = 0; i < 30; i = i + 1){
            body[i].x = 0;
            body[i].y = 0;
            if (i == length){
            	break;
			} // end inner if
        } // end for
        Delay (length);
        Boarder ();
        if (head.direction == RIGHT){
        	Right();
		} // end if
        else if (head.direction == LEFT) {
        	Left();
		} // end else if
        else if (head.direction==DOWN){
        	Down();
		} // end else if
        else if (head.direction==UP){
        	Up();
		} // end else if
        ExitGame();
    }while (!kbhit() && breakers != 0);
    if(breakers == 0){
    	return 0;
	}
    a = getch();
    key = getch ();
    if ((key == RIGHT && head.direction != LEFT && head.direction != RIGHT) || (key == LEFT && head.direction != RIGHT && head.direction!=LEFT) || (key == UP && head.direction != DOWN && head.direction != UP) || (key == DOWN && head.direction != UP && head.direction != DOWN))
    {	
       	bend_no++;
        bend[bend_no] = head;
        head.direction = key;
        if (key == UP){
        	head.y = head.y - 1;
		} // end if
        if (key == DOWN){
        	head.y = head.y + 1;
		} // end if
        if (key == RIGHT){
        	head.x = head.x + 1;
		} // end if
        if(key == LEFT){
        	head.x = head.x - 1;
		} // end if
        Move();
    } // end outer if
    else {
        printf("\a");
        Move();
    } // end outer else
} // end move function

void gotoxy(int x, int y)
{
 	COORD coord;
 	coord.X = x;
 	coord.Y = y;
 	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
} // end gotoxy function

void GotoXY(int x, int y)
{
    HANDLE a;
    COORD b;
    fflush (stdout);
    b.X = x;
    b.Y = y;
    a = GetStdHandle (STD_OUTPUT_HANDLE);
    SetConsoleCursorPosition (a, b);
} // end GotoXY function

void Down()
{
    int i;
    for(i = 0; i <= (head.y - bend[bend_no].y) && len < length; i++){
        GotoXY (head.x, head.y-i);
        if (len == 0){
        	printf("v");
		} // end inner if   
        else {
        	printf("*");
		} // end inner else
        body[len].x = head.x;
        body[len].y = head.y - i;
        len = len + 1;
    } // end for
    Bend ();
    if (!kbhit ()){
    	head.y = head.y + 1;
	} // end if      
} // end Down function 

void Delay(long double k)
{
    Score ();
    long double i;
    for(i = 0; i <= (10000000); i = i + 1);
} // end Delay function

void ExitGame()
{
    int i, check = 0;
    for (i = 4; i < length; i = i + 1){
        if (body[0].x == body[i].x && body[0].y == body[i].y){
            check = check + 1;   
        } // end inner if
        if (i == length || check != 0){
        	break;
		} // end inner if          
    } // end for
    if (head.x <= 10 || head.x >= 70 || head.y <= 10 || head.y >= 30 || check != 0){
        	int score;
            system("cls");
            printf ("�C������!!\n\n");
            score = length - 5;
            printf ("Score : %d\n\n", score);
			breakers = 0;	
         // end else
    } // end outer if
} // end ExitGame function 

void Food()
{
    if (head.x == food.x && head.y == food.y){
        length = length + 1;
        time_t a;
        a = time(0);
        srand(a);
        food.x = rand() % 70;
        if (food.x <= 10){
        	food.x = food.x + 11;
		} // end inner if   
        food.y = rand() % 30;
        if (food.y<=10){
        	food.y = food.y + 11;
		} // end inner if       
    } // end outer if
    else if (food.x==0){
        food.x = rand() % 70;
        if (food.x <= 10){
        	food.x = food.x + 11;
		} // end inner if
        food.y = rand() % 30;
        if (food.y <= 10){
        	food.y = food.y + 11;
		} // end inner if     
    } // end else if
} // end Food function 

void Left()
{
    int i;
    for (i = 0; i <= (bend[bend_no].x - head.x) && len < length; i = i + 1){
        GotoXY((head.x+i),head.y);     
        if (len == 0){
        	printf("<");
		} // end inner if             
        else {
        	printf("*");
		} // end inner else
        body[len].x = head.x + i;
        body[len].y = head.y;
        len = len + 1;
    } // end for
    Bend();
    if (!kbhit()){
    	head.x = head.x - 1;
	} // end if
} // end Left function

void Right()
{
    int i;
    for (i = 0; i <= (head.x - bend[bend_no].x) && len < length; i = i + 1){
        body[len].x = head.x - i;
        body[len].y = head.y;
        GotoXY (body[len].x, body[len].y);
        if (len == 0){
        	printf(">");
		} // end inner if 
        else {
        	printf("*");
		} // end inner else
        len = len + 1;
    } // end for
    Bend();
    if (!kbhit()){
    	head.x = head.x + 1;
	} // end if
} // end Right function

void Bend()
{
    int i, j, diff;
    for (i = bend_no; i >= 0 && len < length; i = i - 1){
        if (bend[i].x == bend[i-1].x){
            diff = bend[i].y - bend[i - 1].y;
            if (diff < 0) {
                for (j = 1; j <= (-diff); j = j + 1){
                    body[len].x = bend[i].x;
                    body[len].y = bend[i].y + j;
                    GotoXY (body[len].x, body[len].y);
                    printf ("*");
                    len = len + 1;
                    if (len == length){
                    	break;
					} // end if           
                } // end for
			} // end inner if
            else if (diff > 0) {
            	for (j = 1; j <= diff; j = j + 1){
                    body[len].x = bend[i].x;
                    body[len].y = bend[i].y - j;
                    GotoXY (body[len].x, body[len].y);
                    printf ("*");
                    len = len + 1;
                    if (len == length){
                    	break;
					} // end if           
                } // end for
			} // end inner else if 
	    } // end outer if
        else if (bend[i].y == bend[i - 1].y){
            diff = bend[i].x - bend[i - 1].x;
            if (diff < 0){
            	for (j = 1; j <= (-diff) && len < length; j = j + 1){
                    body[len].x = bend[i].x+j;
                    body[len].y = bend[i].y;
                    GotoXY (body[len].x, body[len].y);
                    printf ("*");
                   	len = len + 1;
                   	if (len == length){
                   		break;
					} // end if
                } // end for
			} // end inner if   
            else if (diff > 0){
            	for (j = 1; j <= diff && len < length; j = j + 1){
                	body[len].x = bend[i].x - j;
                	body[len].y = bend[i].y;
                	GotoXY (body[len].x, body[len].y);
                	printf ("*");
                	len = len + 1;
                	if (len == length){
                		break;
					} // end if         
               	} // end for
			} // end inner else if 
        } // end outer else if
   	} // end for
} // end Bend function 

void Boarder()
{
   	system("cls");
   	int i;
   	GotoXY (food.x,food.y);   /*displaying food*/
    printf ("F");
   	for(i = 10; i < 71; i = i + 1){
       	GotoXY (i, 10);
        printf ("-");
       	GotoXY (i, 30);
        printf ("-");
   	} // end for
    for(i = 10; i < 31; i = i + 1){
       	GotoXY (10, i);
        printf ("|");
       	GotoXY (70, i);
       	printf ("|");
   	} // end for
} // end Boarder function
void Print()
{
   	//GotoXY(10,12);
   	printf("\n\n\t�w��Ө��ʷR�����ҳгy���@��~(�Ы����N���~��)\n");
   	getch();
   	system("cls");
   	printf("\t�C������:\n");
   	printf ("\n-> �H�W�U���k���b�Y����p���F");
   	printf ("\n\n-> �C�Y��@�ӭ����N�i�H�[�@���A�Y���Ƥj��6���Y�q�L�C���C");
   	printf ("\n\n-> �ǳƦn�F��?");
   	printf("\n\n�Ы����N��}�l�C��...");
   	if(getch()==27);
    
} // end Print function

int Score()
{
   	int score;
   	GotoXY (20, 8);
   	score = length - 5;
   	printf ("SCORE : %d", (length - 5));
   	score = length - 5;
   	return score;
} // end Score function

void Up()
{
   	int i;
   	for(i = 0; i <= (bend[bend_no].y - head.y) && len < length; i = i + 1){
       	GotoXY(head.x,head.y+i);
       	if (len == 0){
       		printf ("^");
		} // end inner if
       	else {
       		printf ("*");
		} // end inner else
       	body[len].x = head.x;
       	body[len].y = head.y + i;
       	len = len + 1;
   	} // end for
   	Bend();
   	if (!kbhit()){
   		head.y = head.y - 1;
	} // end if      
} // end Up function
