%option noyywrap

%x avowel ny
%x easyrules

asound           (a|e|au|ai|om|ei)
osound           (ea|i|u|ou|er|o|ov|um)
csound           (ue|ie)
semi             (nh)
os               ({semi})?({osound})
as               ({semi})?({asound})



%%

0                { printf( "Soan" ); }
1                { printf( "Mouy" ); }
2                { printf( "Pee" ); }
3                { printf( "Bei" ); }
4                { printf( "Buan" ); }
5                { printf( "Pram" ); }

[A-Z]            { printf( "រ" );} /*fix this*/
                    /*There are some combination of alphabets that will change the alphabet in a weird way which doesn't record as a rule.*/
ka/[ \n\t\r]+    {printf("ក");}   
k/{as}           {printf("ក");}     
ch/{as}          {printf("ច");}      /*a*/
s                {printf("ស");}      /*a*/
r                {printf("រ");} 
b                {printf("ប");}           
l                {printf("ល");}      /*o*/
a                {printf("ា");}      /*o*/
ea                {printf("ា");}      /*o*/
khnh             {printf("ខ្ញ");}       /*kh + nh = ខ + subconsonant of ញ, this is fixed in any word/scenario   */  
kh/{asound}      {printf("ខ");}
kh/{osound}      {printf("ឃ");}
kh/{os}          {printf("ឃ");}    /*o*/

    /*----------------------------------------------*/




     /*----------------------------------------------*/

ar               {printf("ើ");}
i                {printf("ិ");}
ei               {printf("ី");}
eu               {printf("ើ");}
ae               {printf("ែ");} /*need fixing*/
" "ae/" "?       {printf("ឯ");}  /* fix overlapping rule. */
h                {printf("ហ");}
thom             {printf("ធំ");}
e/[a-z]          {printf("ឯ");}
ng               {printf("ង");}  
n/{as}           {printf("ណ");}
n/{os}           {printf("ន");}
y                {printf("យ");}      /*o*/
d                {printf("ដ");}      /*a*/     


k/{os}           {printf("គ");}      
k/{as}           {printf("ឃ");}      /*o*/
ng/{os}          {printf("ង");}      /*o*/
ch/{os}          {printf("ជ");}      /*o*/
chh/{os}         {printf("ឈ");}     /*o*/
nh/({os})        {printf("ញ");}      /*o*/
t/{os}           {printf("ទ");}     /*o*/


<ny>{
chh              {printf("ឆ");}    /*a*/
d                {printf("ដ");}      /*a*/
th               {printf("ឋ");}      /*a*/
n                {printf("ណ");}     /*a*/
t                {printf("ត");}      /*a*/    
th               {printf("ថ");}      /*a*/ 
b                {printf("ប");}      /*a*/
ph               {printf("ផ");}      /*a*/
s                {printf("ស");}      /*a*/
h                {printf("ហ");}                  
l                {printf("ឡ");}      /*a*/
ar               {printf("អ");}     /*a*/
}

<ny>{
th               {printf("ធ");}      /*o*/
n                {printf("ន");}      /*o*/
p                {printf("ព");}      /*o*/   
ph               {printf("ភ");}      /*o*/
m                {printf("ម");}      /*o*/
r                {printf("រ");}       /*o*/
l                {printf("ល");}      /*o*/
v                {printf("វ");}     /*o*/
d                {printf("ឌ");}      /*?*/
th               {printf("ឍ");}      /*?*/
}
    
om               {printf( "ំុ" );}   /* FIXME */
ov               {printf( "ៅ" );}   /* FIXME */

%%


/* 
a
e
ei
u
er
o
au
auo
ar
ue
ie
e
ae
ai
or
av
 
*/


int main(){
    yylex();
    return 0;
}