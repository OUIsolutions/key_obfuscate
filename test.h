#ifndef my_project_get_key
#define my_project_get_key(key) \
	for(int i=0;i<15;i++){key[i] = 60.0;}\
	int my_project_integer_1 =  55260.0 - key[9] + 59810.0 + key[3];/*115070.0*/\
printf("expected %d and was %d \n",115070.0,my_project_integer_1);\
	key[3] = 32; \
	key[4] = 112; \
	key[12] = 97; \
	key[7] = 115; \
	key[6] = 114; \
	key[5] = 97; \
	int my_project_integer_2 =  my_project_integer_1;/*115070.0*/\
printf("expected %d and was %d \n",115070.0,my_project_integer_2);\
	key[10] = 115; \
	key[11] = 117; \
	key[8] = 97; \
	key[1] = 97; \
	key[0] = 101; \
	int my_project_integer_3 =  my_project_integer_0 + my_project_integer_0;/*230140.0*/\
printf("expected %d and was %d \n",230140.0,my_project_integer_3);\
	key[9] = 32; \
	key[2] = 105; \
	int my_project_integer_4 =  key[12] - my_project_integer_0;/*-114973.0*/\
printf("expected %d and was %d \n",-114973.0,my_project_integer_4);\
	key[13] = 118; \
	key[14] = 101; \

#endif
