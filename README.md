# KeyObfuscate
a key obfuscator generator that generate obfuscated keys for C code using procedural generation, that are harder to be reverse engineered.
# Important 
 - This is a experimental project, use it at your own risk.
 - This project is not a cryptographer, it just obfuscate the key, it does not encrypt it.
 - This project is not a security tool, it just make the key harder to be reverse engineered.

## Release
| Item | What is it? |
| ------- | --- |
| [debian_static.deb](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/debian_static.deb) | Debian Package |
| [KeyObfuscate.out](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/KeyObfuscate.out) | Linux Binary |
| [key_obfuscate.c](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/key_obfuscate.c) | C Source Code (Amalgamated) |
| [key_obfuscate.exe](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/key_obfuscate.exe) | Windows Binary |
| [key_obfuscate_api.lua](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/key_obfuscate_api.lua) | Lua API file |
| [key_obfuscate_cli.lua](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/key_obfuscate_cli.lua) | Lua CLI file that can be run with **lua key_obfuscate_cli.lua** |
| [rpm_static_build.rpm](https://github.com/OUIsolutions/key_obfuscate/releases/download/0.0.1/rpm_static_build.rpm) | RPM Package |
## Cli Usage
for creating a key encryption,just run the command below:
```shell
 KeyObfuscate --entry 'the key i want to encrypt' --seed  1234 --project_name 'my_project' --output 'my_out.h'
 ```
this will generate a file called `my_out.h` with the key encrypted.

```c 
#ifndef my_project_get_key_h
#define my_project_get_key_h
#define my_projectkey_size 25
#define my_project_get_key(key) \
	for(int i=0;i<25;i++){key[i] = 81.0;}\
	if(( 98696.0 - 84197.0 + key[20] + 41171.0 - 50940.0) <= 4811){\
		key[11] = ( 62304.0 + key[19]) - 62288;/*set:97*/\
	}\
	for(int my_project_scope_0 = ( 49392.0 - key[21] + key[13] - key[14] - key[17]); my_project_scope_0 < 49231; my_project_scope_0++){\
	}\
	for(int my_project_scope_0 = ( 26467.0 - key[22] - 52802.0 - key[8]); my_project_scope_0 < -26496; my_project_scope_0++){\
		for(int my_project_scope_1 = ( 43604.0 - key[10] - 31959.0 + key[8]); my_project_scope_1 < 11646; my_project_scope_1++){\
			key[20] = ( 36729.0 - 47153.0 - key[23] - 64873.0 - 63011.0) + 138588.0;/*fake:99*/\
		}\
		if(( key[18] + key[15] - 32956.0) <= -32794){\
			key[6] = ( key[9] - 87511.0 - key[23] - key[20]) + 87831;/*set:121*/\
			key[10] = ( 44587.0 + key[10] + key[23] + 79884.0 - 38742.0) - 85742.0;/*fake:119*/\
		}\
		key[17] = ( 31378.0 - key[20]) - 31147;/*set:32*/\
		key[15] = ( key[17] - key[5] + key[18] - key[17] - key[7]) + 248.0;/*fake:116*/\
	}\
	key[12] = ( 98591.0 + 72551.0 - 35879.0 - 70885.0) - 64268;/*set:110*/\
	for(int my_project_scope_0 = ( 26400.0 - key[23]); my_project_scope_0 < 26320; my_project_scope_0++){\
		if(( 75206.0 + key[6]) == 75327){\
			key[19] = ( key[12] - 86805.0 + 98580.0 - 90757.0 - key[7]) + 79063;/*set:110*/\
			if(( 72293.0 - 62750.0 + key[5] - key[22] + key[13]) < 9625){\
				key[5] = ( 28495.0 - key[8]) - 28313;/*set:101*/\
			}\
		}\
		if(( key[6] - key[16] - 34586.0 + 43544.0 + key[9]) <= 9079){\
		}\
	}\
	for(int my_project_scope_0 = ( key[11] + 33629.0 + 34463.0); my_project_scope_0 < 68190; my_project_scope_0++){\
		key[4] = ( 42304.0 - 29730.0 + 29411.0 - key[9]) - 41797;/*set:107*/\
	}\
	for(int my_project_scope_0 = ( 35442.0 + 34991.0 - 29612.0 + 31890.0 + key[21]); my_project_scope_0 < 72793; my_project_scope_0++){\
		for(int my_project_scope_1 = ( key[6] + 76912.0); my_project_scope_1 < 77034; my_project_scope_1++){\
			key[10] = ( key[12] + 87299.0) - 87290;/*set:119*/\
		}\
		key[14] = ( 32628.0 + key[16] + key[7]) - 32758;/*set:32*/\
	}\
	key[18] = ( key[11] - 42449.0) + 42453;/*set:101*/\
	if(( 44077.0 - key[6] + key[8]) == 44037){\
	}\
	key[9] = ( key[7] + key[12]) - 159;/*set:32*/\
	key[16] = ( key[18] + key[13] + 30409.0) - 30523.0;/*fake:111*/\
	key[13] = ( 59011.0 + key[16]) - 58963;/*set:116*/\
	key[20] = ( 69408.0 + 73898.0 - 32117.0) - 111090;/*set:99*/\
	key[3] = ( key[6] - key[22] + 87511.0 + 77567.0 + key[18]) - 165187;/*set:32*/\
	key[8] = ( key[9] - key[21] - 35761.0 + key[15]) + 35748;/*set:105*/\
	for(int my_project_scope_0 = ( key[18] + 27959.0 + key[19]); my_project_scope_0 < 28171; my_project_scope_0++){\
		if(( 46900.0 - key[7] + key[10] + 59046.0) > 105983){\
		}\
		key[15] = ( 43101.0 - 53163.0 - key[16]) + 10246;/*set:116*/\
		key[7] = ( 26272.0 + key[15] + key[8] - key[7]) - 26348.0;/*fake:32*/\
		if(( 26935.0 - 32266.0 + key[6] - 98160.0 - 45597.0) > -148968){\
			key[7] = ( 83927.0 + 35294.0) - 119189;/*set:32*/\
		}\
		key[23] = ( 67433.0 - key[8] - 35677.0 + 95787.0) - 127356.0;/*fake:112*/\
	}\
	key[1] = ( key[11] + 58307.0 + key[9]) - 58332;/*set:104*/\
	key[0] = ( 52506.0 - 49684.0) - 2719.0;/*fake:116*/\
	for(int my_project_scope_0 = ( 45727.0 - 49684.0 - key[22] - 39555.0 + 32855.0); my_project_scope_0 < -10737; my_project_scope_0++){\
		key[21] = ( 28033.0 - 56080.0) + 28161;/*set:114*/\
	}\
	if(( key[6] - 27695.0 + key[11] + key[8]) > -27373){\
		key[23] = ( 44388.0 - 25895.0 + 43859.0) - 62240;/*set:112*/\
	}\
	int my_project_integer_1 = ( 36182.0 + key[20] - 94075.0 - key[9] - key[14]);/*create:-57858*/\
	key[2] = ( my_project_integer_1 + key[10] - my_project_integer_1 - key[15]) - -98;/*set:101*/\
	my_project_integer_1 = ( key[17] - my_project_integer_1);/*set:57890*/\
	key[0] = ( my_project_integer_1 - my_project_integer_1) + 116;/*set:116*/\
	key[22] = ( key[22] - key[10] - my_project_integer_1 + key[8] + key[7]) + 57852.0;/*fake:121*/\
	for(int my_project_scope_0 = ( my_project_integer_1 - my_project_integer_1 - key[15] - key[17] - my_project_integer_1); my_project_scope_0 < -58037; my_project_scope_0++){\
		key[22] = ( my_project_integer_1 - key[21]) - 57655;/*set:121*/\
		my_project_integer_1 = ( key[7] - my_project_integer_1 - key[7] + key[7] - key[7]);/*set:-57890*/\
		for(int my_project_scope_1 = ( my_project_integer_1 + my_project_integer_1 - my_project_integer_1 + my_project_integer_1 + key[20]); my_project_scope_1 < -115680; my_project_scope_1++){\
		}\
		if(( my_project_integer_1 - key[17] - my_project_integer_1 + key[19] + key[20]) >= 177){\
			key[16] = ( my_project_integer_1 + my_project_integer_1 - key[20] - key[13] + key[18]) + 116005;/*set:111*/\
			key[24] = ( my_project_integer_1 - key[9] + key[13] - key[15] - key[16]) + 58092.0;/*fake:116*/\
		}\
		key[24] = ( my_project_integer_1 - key[23]) + 58118;/*set:116*/\
	}\

#endif
``` 
so your main code will look like this:
```c
#include <stdio.h>
#include <stdlib.h>
#include "my_out.h"

int main(){
   unsigned char *key = (unsigned char *)malloc(my_projectkey_size+1);
   my_project_get_key(key);
   printf("%s\n",(char*)key);
   free(key);
    return 0;
}
```
## Full Usage 
for make a complete usage, setting all aspects of the key generation, you can use the command below:
```shell
```shell
KeyObfuscate --entry 'the key i want to encrypt' --seed 1234 --project_name 'my_project' --output 'my_out.h' --fake_byte_set 0.5 --create_a_integer 0.33 --create_a_integer_after10 0.10 --create_a_integer_after50 0.05 --max_operations_per_line 6 --min_operations_per_line 2 --create_a_for 0.33 --create_a_if 0.33 --max_scopes 3 --close_scopes 0.66 --integer_set 0.33 --fake_byte_set 0.33 --real_byte_set 0.5 
```

## Flags
| Flag               | Alias | Description                                                           |
|--------------------|-------|-----------------------------------------------------------------------|
| --entry            | -e    | Main content to be obfuscated                                         |
| --entry_file       | -ef   | File that contains the text to be obfuscated                          |
| --project_name     | -pn   | Project name                                                          |
| --output           | -o    | Path to the output file                                               |
| --seed             | -s    | Seed used for random values generation                                |
| --debug            | -d    | Enables debug mode                                                    |
| --fake_byte_set    |       | Probability to insert fake values into undefined bytes                |
| --create_a_integer |       | Probability to create instructions involving integers                 |
| --create_a_for     |       | Probability to generate for loops                                     |
| --create_a_if      |       | Probability to generate if conditions                                 |
| --max_scopes       |       | Maximum number of scope blocks                                        |
| --close_scopes     |       | Probability to close scope blocks                                     |
| --integer_set      |       | Probability to define integer values in instructions                  |
| --real_byte_set    |       | Probability to insert real values into undefined bytes                |


## Api Usage
if you want you can use the lua api directly 
```lua
local  key_obfuscate = require("release/key_obfuscate_api")

props ={
    key ="key i want to obfuscate",
    name = "project_name",
    seed = 1033443,
    debug = false,
    fake_byte_set = 0.5, --chance to set a unset byte a fake value
    create_a_integer = 0.33, --chance of create a interger  swap value
    create_a_integer_after10 = 0.10, --chance of create a interger  swap value
    create_a_integer_after50 = 0.05, --chance of create a interger  swap value
    max_operations_per_line = 6, -- max aritmetic operations per line
    min_operations_per_line = 2, -- min aritmetic operations per line
    create_a_for =0.33, -- chance to create a for loop
    create_a_if = 0.33, -- chance to create a if statement
    max_scopes = 3,  -- max scopes to create
    close_scopes = 0.66, -- chance to close a scope
    integer_set = 0.33, -- chance to set a integer with a random value
    fake_byte_set = 0.33, -- chance to set a unset byte a fake value
    real_byte_set = 0.5 -- chance to set a unset byte a real value
}

code = key_obfuscate.create_procedural_generation (props)
io.open("out.h","w"):write(code):close()
```

## Building from Scratch
if you want to build the code from scracth  you need to have [Darwin](https://github.com/OUIsolutions/Darwin) 
installed on versio **0.020** and **Docker** our **Podman** installed on your machine.
After install all dependecies,clone the repo on your machine , than run:
```shel
darwin  run_blueprint build/ --mode folder lua_api lua_cli  amalgamate local_compilation alpine_static debian_static rpm_static windowsi32
```

## Building Testing 
if you want just build for testing you can run  and test using the lua api
```shell
darwin  run_blueprint build/ --mode folder lua_api lua_cli 
```
