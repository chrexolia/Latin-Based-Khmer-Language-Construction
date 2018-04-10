%{
/* Declaracoes C diversas */
int n = 1;
%}

%option noyywrap
%x dentro chavetas

Abrev ER
%%
#.*               { ; }
\n/[^#\n{]        { printf( "<s>" ); BEGIN dentro; }
\n\{              { printf( "<s>" ); BEGIN chavetas; }
\n                { ; }
<dentro,chavetas>{
19                { printf( "dezanove" ); }
15                { printf( "quinze" ); }
11                { printf( "onze" ); }
1                 { printf( "um" ); }
2                 { printf( "dois" ); }
3                 { printf( "três" ); }
4                 { printf( "quatro" ); }
5                 { printf( "cinco" ); }
1/[0-9][0-9][1-9] { printf( "mil " ); }
2/[0-9][1-9]      { printf( "duzentos e " ); }
9/[0-9][1-9]      { printf( "novecentos e " ); }
2/[1-9]           { printf( "vinte e " ); }
\./[1-9]          { printf( " ponto " ); }
.                 { printf( "%s", yytext ); }
}
<dentro>{
\n/[^#\n]         { printf( "</s>(jj_%d)\n<s>", n++ ); }
\n                { printf( "</s>(jj_%d)\n", n++ ); BEGIN 0; }
}
<chavetas>{
\}/\n             { printf( "</s>(jj_%d)\n", n++ ); BEGIN 0; }
\n                { printf( " " ); }
}
%%

int main () {
    yylex();
    return 0;
}
