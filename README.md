# key_obfuscate
a key obfuscator generator that generate obfuscated keys for C code , that are harder to be reverse engineered.

## Cli Usage
for creating a key encryption,just run the command below:
```shell


## Building from Scratch
if you want to build the code from scracth  you need to have [Darwin](https://github.com/OUIsolutions/Darwin) 
installed on versio **0.020** and **Docker** our **Podman** installed on your machine.
After install all dependecies,clone the repo on your machine , than run:
```shel
arwin  run_blueprint build/ --mode folder lua_api lua_cli  amalgamate local_compilation alpine_static debian_static rpm_static windowsi32
```

## Building Testing 
if you want just build for testing you can run  and test using the lua api
```shell
darwin  run_blueprint build/ --mode folder lua_api lua_cli 
```
