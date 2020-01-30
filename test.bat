@echo off
SET PATH=%PATH%;%~dp0tools\bin;%~dp0tools\tcc
@echo on

.\tools\bin\bison.exe -vdty c.y
.\tools\bin\flex.exe c.l
tcc -o a.exe y.tab.c lex.yy.c