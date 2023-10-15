/*** Definition Section ***/
%{
int i=0;;
%}

/*** Rule Section ***/
%%
^[a]+[b]*[c]+[d]* i++;  printf("valid string\n");

\n {return 0;}
%%

/*** Code Section ***/
int yywrap(){}
int main(){
yylex();
if(i == 0 )  printf("Invalid\n");
return 0;
}
