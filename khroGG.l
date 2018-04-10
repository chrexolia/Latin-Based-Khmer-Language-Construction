%{
  FILE *o2;
%}
%option noyywrap 
%%



 /*asoundc*/

k                {fprintf(o2, "a1");}     
kh               {fprintf(o2, "a2");}      
ch               {fprintf(o2, "a3");}      
chh              {fprintf(o2, "a4");}      
d                {fprintf(o2, "a5");}      
th               {fprintf(o2, "a6");}      
n/av             {fprintf(o2, "a7");}     
t                {fprintf(o2, "a8");}          
th               {fprintf(o2, "a9");}     
b                {fprintf(o2, "a10");} 
ph               {fprintf(o2, "a11");}     
s                {fprintf(o2, "a12");}      
h                {fprintf(o2, "a13");}                  
l                {fprintf(o2, "a14");}      
a                {fprintf(o2, "a15");}     



 /*asoundsc*/
k                {fprintf(o2, "ac1");}     
kh               {fprintf(o2, "ac2");}       
ch               {fprintf(o2, "ac3");}      
chh              {fprintf(o2, "ac4");}      
d                {fprintf(o2, "ac5");}      
th               {fprintf(o2, "ac6");}      
n                {fprintf(o2, "ac7");}     
t                {fprintf(o2, "ac8");}          
th               {fprintf(o2, "ac9");}       
b                {fprintf(o2, "ac10");} 
ph               {fprintf(o2, "ac11");}      
s                {fprintf(o2, "ac12");}     
h                {fprintf(o2, "ac13");}                  
a                {fprintf(o2, "ac14");}    

 /*osoundc*/ 
k                {fprintf(o2, "o1");}      
kh               {fprintf(o2, "o2");}      
ng               {fprintf(o2, "o3");}      
ch               {fprintf(o2, "o4");}     
chh              {fprintf(o2, "o5");}    
nh               {fprintf(o2, "o6");}      
t                {fprintf(o2, "o7");}
th               {fprintf(o2, "o8");}     
n                {fprintf(o2, "o9");}   
p                {fprintf(o2, "o10");}         
ph               {fprintf(o2, "o11");}      
m                {fprintf(o2, "o12");}     
y                {fprintf(o2, "o13");}     
r                {fprintf(o2, "o14");}      
l                {fprintf(o2, "o15");}     
v                {fprintf(o2, "o16");}
d                {fprintf(o2, "o17");}    
th               {fprintf(o2, "o18");}     


 /*osoundsc*/
k                {fprintf(o2, "oc1");}      
kh               {fprintf(o2, "oc2");}      
ng               {fprintf(o2, "oc3");}     
ch               {fprintf(o2, "oc4");}    
chh              {fprintf(o2, "oc5");}  
nh               {fprintf(o2, "oc6");}     
t                {fprintf(o2, "oc7");}
th               {fprintf(o2, "​oc8");}      
n                {fprintf(o2, "oc9");}      
p                {fprintf(o2, "oc10");}      
ph               {fprintf(o2, "oc11");}     
m                {fprintf(o2, "oc12");}      
y                {fprintf(o2, "oc13");}     
r                {fprintf(o2, "oc14");}     
l                {fprintf(o2, "oc15");}      
v                {fprintf(o2, "oc16");}
d                {fprintf(o2, "oc17");}      
th               {fprintf(o2, "oc18");}      


 /*SCcombination*/

g               {fprintf(o2, "s1");}     
n               {fprintf(o2, "s2");}     
f               {fprintf(o2, "s3");}      
z               {fprintf(o2, "s4");}     



 /*fsoundv*/

u                {fprintf(o2, "f1");}      
er               {fprintf(o2, "f2");}      
e                {fprintf(o2, "f3");}                     
ae               {fprintf(o2, "f4");}      
ou               {fprintf(o2, "f5");}      
ue               {fprintf(o2, "f6");}     
ie               {fprintf(o2, "f7");}     


 /*asoundv*/
a                {fprintf(o2, "av1");}                  
e                {fprintf(o2, "av2");}     
i                {fprintf(o2, "av3");}      
o                {fprintf(o2, "av4");}     
au               {fprintf(o2, "av5");}    
ar               {fprintf(o2, "av6");}      
a                {fprintf(o2, "av7");}                  
i                {fprintf(o2, "av8");}      
ei               {fprintf(o2, "av9");}      
ai               {fprintf(o2, "av10");}      
ao               {fprintf(o2, "av11");}      
av               {fprintf(o2, "av12");}      



 /*osoundv*/
eu               {fprintf(o2, "ov1");}
u                {fprintf(o2, "ov2");}     
ou               {fprintf(o2, "ov3");}      
er               {fprintf(o2, "ov4");}    
ea               {fprintf(o2, "ov5");}                  
i                {fprintf(o2, "ov6");}     
e                {fprintf(o2, "ov7");}
ie               {fprintf(o2, "ov8");}     
or               {fprintf(o2, "ov9");}     
uy               {fprintf(o2, "ov10");}     

  /*adiacritics*/
ou              {fprintf(o2, "ad1");}     
om              {fprintf(o2, "ad2");}     
ae              {fprintf(o2, "ad3");}      
ah              {fprintf(o2, "ad4");}       
ih              {fprintf(o2, "ad5");}      
oh              {fprintf(o2, "ad6");}
eh|is           {fprintf(o2, "ad7");}
orh             {fprintf(o2, "ad8");}  


 /*odiacritics*/
um               {fprintf(o2, "od1");}      
oam              {fprintf(o2, "od2");}     
unknown          {fprintf(o2, "od3");}
eas              {fprintf(o2, "od4");}      
ih               {fprintf(o2, "od5");}      
oh               {fprintf(o2, "od6");}
es               {fprintf(o2, "od7");}
ouh              {fprintf(o2, "od8");}



 /*iv*/
ae               {fprintf(o2, "iv2");}     
reu              {fprintf(o2, "iv3");}
our              {fprintf(o2, "iv4");}
ov               {fprintf(o2, "iv5");}  


 /* rule */   

.|\n              {fprintf(o2, "%s", yytext);}

%%
int kklex();
extern FILE *kkin;
int main () {
  o2 = fopen("tmp.txt","w");
    yylex();
    fclose(o2);
    kkin = fopen("tmp.txt","r");
    kklex();
    return 0;
}