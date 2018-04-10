%option noyywrap

avowel (um|am)
ovowel (om|)
ovo        ({sub})?({ovowel})
avo        ({sub})?({avowel})
sub       (kh)

%%
om               {printf( "ំុ" );}   /* FIXME */
ov               {printf( "ៅ" );}   /* FIXME */
kh/nh               {printf("ខ");} 
{sub}/nh         {printf("subញ");}
t/{ovo}                {printf("ទ");}     /*o*/
%%

int main(){
    yylex();
    return 0;
}

