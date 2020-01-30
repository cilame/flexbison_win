@echo off
SET PATH=%PATH%;%~dp0tools\bin;%~dp0tools\tcc
@echo on

.\tools\bin\bison.exe -vdty c.y
.\tools\bin\flex.exe c.l
tcc -o a.exe y.tab.c lex.yy.c


@echo off
if "%1"=="test" ( 
 echo "use test model. keep middle file:y.tab.c y.tab.h y.output lex.yy.c"
) else (
 @echo off
 del y.tab.c y.tab.h y.output lex.yy.c
 @echo on
)
