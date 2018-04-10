    
%option noyywrap



as           (a|i|o|au|ar|a|ai|or|av)
os           (u|ou|er|eu|ae|ea|e|ao|ei|ie|or|ov|is)
thc           (e|t|)         

 
%%



0                { printf( "Soan" ); }
1                { printf( "Mouy" ); }
2                { printf( "Pee" ); }
3                { printf( "Bei" ); }
4                { printf( "Buan" ); }
5                { printf( "Pram" ); }

 /*asoundc*/

k                {printf("ក");}     
kh               {printf("ខ");}      
ch               {printf("ច");}      
chh              {printf("ឆ");}      
d                {printf("ដ");}      
th               {printf("ឋ");}      
n/{as}                {printf("ណ");}     
" "t                {printf("ត");}          
th               {printf("ថ");}     
b                {printf("ប");} 
" "ph               {printf("ផ");}     
s                {printf("ស");}      
h                {printf("ហ");}                  
" "l                {printf("ឡ");}      
" "a                {printf("អ");}     



 /*asoundsc
k                {printf("្ក");}     
kh               {printf("្ខ");}       
ch               {printf("្ច");}      
chh              {printf("្ឆ");}      
d                {printf("្ដ");}      
th               {printf("្ឋ");}      
n                {printf("្ណ");}     
t                {printf("្ត");}          
th               {printf("្ថ");}       
b                {printf("្ប");} 
ph               {printf("#");}      
s                {printf("្ផ");}     
h                {printf("្ហ");}                  
a                {printf("្អ");}    
         */

 /*osoundc*/ 
k/{os}                {printf("គ");}      
kh               {printf("ឃ");}      
ng               {printf("ង");}      
ch/{os}               {printf("ជ");}     
chh              {printf("ឈ");}    
nh               {printf("ញ");}      
t/{os}                {printf("ទ");}
th               {printf("ធ");}     
n/{os}?                {printf("ន");}   
p                {printf("ព");}         
ph               {printf("ភ");}      
m                {printf("ម");}     
y                {printf("យ");}     
r                {printf("រ");}      
l/{os}?                {printf("ល");}     
v                {printf("វ");}
d                {printf("ឌ");}    
th               {printf("ឍ");}     


 /*osoundsc*
k                {printf("្គ");}      
kh               {printf("្ឃ");}      
ng               {printf("្ង");}     
ch               {printf("្ជ");}    
chh              {printf("្ឈ");}  
nh               {printf("្ញ");}     
t                {printf("្ទ");}
th               {printf("​្ធ");}      
n                {printf("្ន");}      
p                {printf("្ព");}      
ph               {printf("្ភ");}     
m                {printf("្ម");}      
y                {printf("្យ");}     
r                {printf("្រ");}     
l                {printf("្ល");}      
v                {printf("្វ");}
d                {printf("្ឌ");}      
th               {printf("្ឍ");}      


 /*SCcombination/

g               {printf("ហ្គ");}     
n               {printf("ហ្ន");}     
f               {printf("ហ្វ");}      
z               {printf("ហ្ស៊");}     



 /*fsoundv*/

u                {printf("ឹ");}      
er               {printf("ឺ");}      
e" "                {printf("េ");}                     
ae               {printf("ែ");}      
ou               {printf("ួ");}      
ue               {printf("ៀ");}     
ie               {printf("ៀ");}     


 /*asoundv*/
a                {printf("ា");}                  
e                {printf("ិ");}     
i               {printf("ី");}      
o                {printf("ុ");}     
au               {printf("ូ");}    
ar               {printf("ើ");}      
a                {printf("ា");}                  
i                {printf("ិ");}      
ei               {printf("ី");}      
ai               {printf("ៃ");}      
ao               {printf("ោ");}      
av               {printf("ៅ");}      



 /*osoundv*/
eu               {printf("ឺ");}
u                {printf("ុ");}     
ou               {printf("ូ");}      
 /*er               {printf("ើ");}  */    
ea               {printf("ា");}                  
i                {printf("ិ");}     
e               {printf("ី");}
ie               {printf("ៃ");}     
or               {printf("ោ");}     
 /*uy               {printf("ៅ");}     

  /*adiacritics*/
ou              {printf("ុំ");}     
om" "?               {printf("ំ");}     
ae               {printf("ាំ");}      
ah              {printf("ះ");}       
ih               {printf("ិះ");}      
oh               {printf("ុះ");}
eh|is               {printf("េះ");}
orh              {printf("េាះ");}  


 /*odiacritics*/
um               {printf("ុំ");}      
oam               {printf("ំ");}     
unknown          {printf("ាំ");}
eas               {printf("ះ");}      
ih               {printf("ិះ");}      
oh               {printf("ុះ");}
es               {printf("េះ");}
ouh              {printf("េាះ");}



 /*iv*
" "ae" "?               {printf("ឯ");}      /*?*
reu              {printf("ឬ");}
our              {printf("ឱ");}
ov               {printf("ឳ");}  


 /* rule */   



%%
int main () {
    yylex();
    return 0;
}