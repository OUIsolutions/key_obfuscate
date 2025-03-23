#ifndef my_projectd_get_key_h
#define my_projectd_get_key_h
#define my_projectdkey_size 4
#define my_projectd_get_key(key) \
	for(int i=0;i<4;i++){key[i] = 75.0;}\
	key[1] = ( key[1] - key[0] - key[1]) + 176.0;/*101*/\
		for(int my_projectd_scope_1 = ( key[2] - key[1]); my_projectd_scope_1 < -25.0; my_projectd_scope_1++){\
		key[0] = ( 57107.0 + 46265.0 - key[1] + 86359.0 + 57159.0) - 246673.0;/*116*/\
		int my_projectd_integer_1 = ( 54909.0 - key[0]);/*54793.0*/\
		key[2] = ( key[1] - my_projectd_integer_1) + 54807.0;/*115*/\
		key[3] = ( my_projectd_integer_1 + my_projectd_integer_1 - key[2] - my_projectd_integer_1 + my_projectd_integer_1) - 109370.0;/*101*/\
	}

#endif
