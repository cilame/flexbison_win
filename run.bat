@echo off
SET PATH=%PATH%;%~dp0tools\bin
@echo on

.\tools\bin\bison.exe -vdty c.y
.\tools\bin\flex.exe c.l
tcc -o a.exe y.tab.c lex.yy.c

@echo off
del y.tab.c y.tab.h y.output lex.yy.c
@echo on