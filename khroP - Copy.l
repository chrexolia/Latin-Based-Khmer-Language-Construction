    
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

k                {printf("a1");}     
kh               {printf("a2");}      
ch               {printf("a3");}      
chh              {printf("a4");}      
d                {printf("a5");}      
th               {printf("a6");}      
n/{as}           {printf("a7");}     
" "t             {printf("a8");}          
th               {printf("a9");}     
b                {printf("a10");} 
" "ph            {printf("a11");}     
s                {printf("a12");}      
h                {printf("a13");}                  
" "l             {printf("a14");}      
" "a             {printf("a15");}     



 /*asoundsc*/
k                {printf("ac1");}     
kh               {printf("ac2");}       
ch               {printf("ac3");}      
chh              {printf("ac4");}      
d                {printf("ac5");}      
th               {printf("ac6");}      
n                {printf("ac7");}     
t                {printf("ac8");}          
th               {printf("ac9");}       
b                {printf("ac10");} 
ph               {printf("ac11");}      
s                {printf("ac12");}     
h                {printf("ac13");}                  
a                {printf("ac14");}    
         */

 /*osoundc*/ 
k/{os}           {printf("o1");}      
kh               {printf("o2");}      
ng               {printf("o3");}      
ch/{os}          {printf("o4");}     
chh              {printf("o5");}    
nh               {printf("o6");}      
t/{os}           {printf("o7");}
th               {printf("o8");}     
n/{os}           {printf("o9");}   
p                {printf("o10");}         
ph               {printf("o11");}      
m                {printf("o12");}     
y                {printf("o13");}     
r                {printf("o14");}      
l/{os}?          {printf("o15");}     
v                {printf("o16");}
d                {printf("o17");}    
th               {printf("o18");}     


 /*osoundsc*/
k                {printf("oc1");}      
kh               {printf("oc2");}      
ng               {printf("oc3");}     
ch               {printf("oc4");}    
chh              {printf("oc5");}  
nh               {printf("oc6");}     
t                {printf("oc7");}
th               {printf("​oc8");}      
n                {printf("oc9");}      
p                {printf("oc10");}      
ph               {printf("oc11");}     
m                {printf("oc12");}      
y                {printf("oc13");}     
r                {printf("oc14");}     
l                {printf("oc15");}      
v                {printf("oc16");}
d                {printf("oc17");}      
th               {printf("oc18");}      


 /*SCcombination*/

g               {printf("s1");}     
n               {printf("s2");}     
f               {printf("s3");}      
z               {printf("s4");}     



 /*fsoundv*/

u                {printf(f1);}      
er               {printf("f2");}      
e                {printf("f3");}                     
ae               {printf("f4");}      
ou               {printf("f5");}      
ue               {printf("f6");}     
ie               {printf("f7");}     


 /*asoundv*/
a                {printf("av1");}                  
e                {printf("av2");}     
i                {printf("av3");}      
o                {printf("av4");}     
au               {printf("av5");}    
ar               {printf("av6");}      
a                {printf("av7");}                  
i                {printf("av8");}      
ei               {printf("av9");}      
ai               {printf("av10");}      
ao               {printf("av11");}      
av               {printf("av12");}      



 /*osoundv*/
eu               {printf("ov1");}
u                {printf("ov2");}     
ou               {printf("ov3");}      
er               {printf("ov4");}    
ea               {printf("ov5");}                  
i                {printf("ov6");}     
e                {printf("ov7");}
ie               {printf("ov8");}     
or               {printf("ov9");}     
uy               {printf("ov10");}     

  /*adiacritics*/
ou              {printf("ad1");}     
om              {printf(ad2);}     
ae              {printf("ad3");}      
ah              {printf("ad4");}       
ih              {printf("ad5");}      
oh              {printf("ad6");}
eh|is           {printf("ad7");}
orh              {printf("ad8");}  


 /*odiacritics*/
um               {printf("od1");}      
oam               {printf("od2");}     
unknown          {printf("od3");}
eas               {printf("od4");}      
ih               {printf("od5");}      
oh               {printf("od6");}
es               {printf("od7");}
ouh              {printf("od8");}



 /*iv*/
" "ae" "?        {printf("iv2");}     
reu              {printf("iv3");}
our              {printf("iv4");}
ov               {printf("iv5");}  


 /* rule */   



%%
int main () {
    yylex();
    return 0;
}