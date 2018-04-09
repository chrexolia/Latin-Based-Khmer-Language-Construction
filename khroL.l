%{
  FILE *o2;
%}
%option noyywrap 
%%

  /* num */


 /*asoundc*/

 /* word that has ' end with k without that end with "rh" */

[.]              {fprintf(o2, "`");}
ua|uo            {fprintf(o2, "fv10");}
k                {fprintf(o2, "a01");}     
kh               {fprintf(o2, "a02");}      
ch               {fprintf(o2, "a03");}      
chh              {fprintf(o2, "a04");}      
d                {fprintf(o2, "a05");} 
th               {fprintf(o2, "a09");}              
n                {fprintf(o2, "a07");}  
N                {fprintf(o2, "a15");}   
t                {fprintf(o2, "a08");}              
b                {fprintf(o2, "a10");} 
ph               {fprintf(o2, "a11");}     
s                {fprintf(o2, "a12");}      
h                {fprintf(o2, "a13");}                  
l                {fprintf(o2, "a14");}  
j                {fprintf(o2, "a16");}  
  /* a                {fprintf(o2, "a15");} */ 



 /*asoundsc/
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
*/
 /*osoundc*/ 
k                {fprintf(o2, "o01");}      
kh               {fprintf(o2, "o02");}      
ng               {fprintf(o2, "o03");}      
 /* ch               {fprintf(o2, "o04");} */ 
chh              {fprintf(o2, "o05");}    
nh               {fprintf(o2, "o06");}      
 /*t                {fprintf(o2, "o7");}*/
th               {fprintf(o2, "o08");}     
 /*n                {fprintf(o2, "o9");}  */ 
p                {fprintf(o2, "o10");}         
    /*ph               {fprintf(o2, "o11");}     */ 
m                {fprintf(o2, "o12");}     
y                {fprintf(o2, "o13");}     
r                {fprintf(o2, "o14");}      
 /*l                {fprintf(o2, "o15");} */    
v                {fprintf(o2, "o16");}
d                {fprintf(o2, "o17");}    
th               {fprintf(o2, "o18");}     


 /*osoundsc*
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

g               {fprintf(o2, "s01");}     
  /*n               {fprintf(o2, "s2");}  */   
f               {fprintf(o2, "s03");}      
z               {fprintf(o2, "s04");}     



 /*fsoundv*/
us                {fprintf(o2, "ad08");}      
 /*er               {fprintf(o2, "f02");}     */ 
e                {fprintf(o2, "f03");}                     
  /*ae               {fprintf(o2, "f04");}   */ 
ou               {fprintf(o2, "f05");}      
eur               {fprintf(o2, "f07");}     
ear              {fprintf(o2, "f06");}     


 /*asoundv*/
u                {fprintf(o2, "av05");} 
a                {fprintf(o2, "av01");}                
  /*e                {fprintf(o2, "av02");} */    
ii                {fprintf(o2, "av03");}      
  /*o                {fprintf(o2, "av04");}    */ 
au               {fprintf(o2, "av05");}    
ar              {fprintf(o2, "av06");}     
 /*a                {fprintf(o2, "av07");} */                  
i                {fprintf(o2, "ov08");}      
ei              {fprintf(o2, "fv09");}      
ai               {fprintf(o2, "av10");}          
av               {fprintf(o2, "av12");}      


 /*osoundv*/
oa               {fprintf(o2, "ov09");} 
ao               {fprintf(o2, "ov09");}
eu               {fprintf(o2, "ov01");}
o                {fprintf(o2, "ov02");}     
u               {fprintf(o2, "ov03");}      
er               {fprintf(o2, "ov04");}    
ea               {fprintf(o2, "ov05");}                  
e                {fprintf(o2, "ov06");}     
ie               {fprintf(o2, "ov08");}     
is               {fprintf(o2, "ov12");}    
 /*uy               {fprintf(o2, "ov10");} */ 
 ov                {fprintf(o2, "ov10");} 
 /*or               {fprintf(o2, "ov11");} /*
  /*adiacritics*/
ou              {fprintf(o2, "ad01");}     
om              {fprintf(o2, "ad02");}     
ae              {fprintf(o2, "ad03");}    
ah              {fprintf(o2, "ad04");}       
ih              {fprintf(o2, "ad05");}      
oh              {fprintf(o2, "ad06");}
eh|is           {fprintf(o2, "ad07");}
orh             {fprintf(o2, "ad08");}  


 /*odiacritics*/
um               {fprintf(o2, "od01");}      
oam              {fprintf(o2, "od02");}     
unknown          {fprintf(o2, "od03");}
eas              {fprintf(o2, "od04");}      
ih               {fprintf(o2, "od05");}      
os               {fprintf(o2, "od06");}
es               {fprintf(o2, "od07");}
ouh              {fprintf(o2, "od08");}

 /*special case*/



 /*iv*
ae               {fprintf(o2, "iv2");}    
reu              {fprintf(o2, "iv3");}
our              {fprintf(o2, "iv4");}
ov               {fprintf(o2, "iv5");} */ 

     


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