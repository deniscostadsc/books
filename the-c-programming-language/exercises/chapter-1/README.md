```
$ gcc 1-1-a.c
1-1-a.c:1:1: warning: return type defaults to ‘int’ [-Wimplicit-int]
 main() {
 ^~~~
1-1-a.c: In function ‘main’:
1-1-a.c:2:5: warning: implicit declaration of function ‘printf’ [-Wimplicit-function-declaration]
     printf("hello world!\n");
     ^~~~~~
1-1-a.c:2:5: warning: incompatible implicit declaration of built-in function ‘printf’
1-1-a.c:2:5: note: include ‘<stdio.h>’ or provide a declaration of ‘printf’
```

```
$ gcc 1-1-b.c
1-1-b.c:3:8: error: expected declaration specifiers or ‘...’ before string constant
 printf("hello world!\n");
        ^~~~~~~~~~~~~~~~
```

```
$ gcc 1-1-c.c
1-1-c.c:1:9: error: #include expects "FILENAME" or <FILENAME>
 #include
         ^
1-1-c.c:3:1: warning: return type defaults to ‘int’ [-Wimplicit-int]
 main() {
 ^~~~
1-1-c.c: In function ‘main’:
1-1-c.c:4:5: warning: implicit declaration of function ‘printf’ [-Wimplicit-function-declaration]
     printf("hello world!\n");
     ^~~~~~
1-1-c.c:4:5: warning: incompatible implicit declaration of built-in function ‘printf’
1-1-c.c:4:5: note: include ‘<stdio.h>’ or provide a declaration of ‘printf’
```

```
$ gcc 1-1-d.c
1-1-d.c:3:1: warning: return type defaults to ‘int’ [-Wimplicit-int]
 main() {
 ^~~~
1-1-d.c: In function ‘main’:
1-1-d.c:5:1: error: expected ‘;’ before ‘}’ token
 }
 ^
```

```
$ gcc 1-1-e.c
1-1-e.c:3:1: warning: return type defaults to ‘int’ [-Wimplicit-int]
 main() {
 ^~~~
1-1-e.c: In function ‘main’:
1-1-e.c:4:5: error: expected declaration or statement at end of input
     printf("hello world!\n");
     ^~~~~~
```
