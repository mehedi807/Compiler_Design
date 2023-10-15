
%{
#include <stdio.h>
int count = 0;
%}

%%
[A-Z]   { printf("%s is a capital letter.\n", yytext); count++; }
.       { printf("%s is not a capital letter.\n", yytext); } 
%%

int yywrap() {
    return 1; // Indicate end of input
}

int main() {
    yylex();
    printf("Number of Capital letters in the given input: %d\n", count);
    return 0;
}
