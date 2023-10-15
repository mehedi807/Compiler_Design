/*** Definition Section ***/
%{
int i=0; int a = 0; int b = 0; int c = 0;int d=0;
int f = 0; int e = 0;
%}

/*** Rule Section ***/
%%
^if|else|for|while|do|switch|int|char|float|double|return$ a++;  printf ("KEYWORD \n");

^[-]*[a-z A-Z _][a-z A-Z _ 0-9]*$ i++; printf("Valid Identifier\n");

^[/]{1}[/]{1}[a-zA-Z0-9]* b++; printf("Valid Comment\n");
^[/]{1}[*]+{1}[a-zA-Z0-9]*[*]{1}[/]{1} b++; printf("Valid Comment\n");
^[/]+[a-zA-z]*[0-9]*[/]+ b++; printf("Valid Comment\n");

^[0-9]+$ d++; printf("Valid Integer Number\n");
^[0-9]*[.][0-9]+$ f++; printf("Valid Floating Number\n");

^[0-9]*[.][0-9]+e^[0-9]*[.][0-9]+ e++; printf("Valid Exponential Number\n");
^[0-9]+e^[0-9]+ e++; printf("Valid Exponential Number\n");
^[0-9]*[.][0-9]+e^[0-9]+ e++;  printf("Valid Exponential Number\n");

^[+-=*/]$ c++; printf("Valid Operator\n");

\n {return 0;}
%%

/*** Code Section ***/
int yywrap(){}
int main(){
yylex();
if(i == 0 && a ==0 && b==0 && c==0 && d==0 && f==0 && e==0)  printf("Invalid\n");
return 0;
}
