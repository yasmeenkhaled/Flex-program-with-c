%{

#include <iostream>

#include <fstream>

using namespace std;

ofstream outputfile;



%}

%%


[S-s][E-e][L-l][E-e][C-c][T-t]   { outputfile<<"Keyword :"<<yytext<<endl; }  
[F-f][R-r][O-o][M-m]             { outputfile<<"Keyword :"<<yytext<<endl; }  
[W-w][H-h][E-e][R-r][E-e]        { outputfile<<"Keyword :"<<yytext<<endl; }  
[a-zA-Z0-9]+                     { outputfile<<"ID:" <<yytext<<endl; }  
\n                                { outputfile<<endl; } 
.                                
%%

int yywrap(){ return 1;}

int main(int, char**) {

yyin = fopen( "in.txt", "r" );

yyout = fopen( "outError.txt", "w" );

outputfile.open ("out.txt");




while (yylex()>0){}

fclose(yyin);

fclose(yyout);

}