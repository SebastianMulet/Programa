%{
#include <stdio.h>
%}

%option yylineno
%option noinput
%option nounput
%option outfile="flex.c"

Caracteres 	[a-z]|[A-Z]|[0-9]
Simbolos	[,;.:-_#@$%/)(]

%%

{Caracteres}	putchar(yytext[0]);
{Simbolos}	putchar(yytext[0]);
"\r"		printf("\r");
"\n"		printf("\n");
.		printf(" ");

%%
