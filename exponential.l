/*** Definition Section ***/
%{
int valid=0;
%}

/*** Rule Section ***/
%%
^[0-9]*[.][0-9]+e^[0-9]*[.][0-9]+ valid++;
^[0-9]+e^[0-9]+ valid++;
^[0-9]*[.][0-9]+e^[0-9]+ valid++;
\n {return 0;}
%%

/*** Code Section ***/
int yywrap(){}
int main(){
yylex();
if(valid!=0) printf("Valid Exponential Number\n");
else    printf("Invalid Exponential Number\n");
return 0;
}
