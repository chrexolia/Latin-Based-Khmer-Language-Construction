    
%option noyywrap



 
%%


    /*asoundsc*/
k                {printf("c1");}     
kh               {printf("c2");}      /*a*/ 
ch               {printf("c3");}      /*a*/
chh              {printf("c4");}      /*a*/
d                {printf("c5");}      /*a*/
th               {printf("c6");}      /*a*/
n                {printf("c7");}     /*a*/
t                {printf("c8");}      /*a*/    
th               {printf("c9");}      /*a*/
b                {printf("c10");} 
ph               {printf("c11");}      /*a*/
s                {printf("c12");}      /*a*/
h                {printf("c13");}                  
l                {printf("c14");}      /*a*/
a   1             {printf("c15");}     /*a*/

}

    /*asoundc*/
k                {printf("a1");}     /*a*/
kh                {printf("a2");}     /*a*/
ch                {printf("a3");}     /*a*/
chh                {printf("a4");}     /*a*/
d                {printf("a5");}     /*a*/
th                {printf("a6");}     /*a*/
n                {printf("a7");}     /*a*/
t                {printf("a8");}     /*a*/     /*a*/    
th                 {printf("a9");}     /*a*/     /*a*/ 
b                {printf("a10");}     /*a*/
ph                {printf("a11");}     /*a*/ /*a*/
s                {printf("a12");}     /*a*//*a*/
h                {printf("a13");}     /*a*/
a                {printf("a14");}     /*a*/
}

    /*osoundc*/ 
k                {printf("o1");}      
kh               {printf("o2");}      /*o*/
ng               {printf("o3");}      /*o*/
ch               {printf("o4");}      /*o*/
chh              {printf("o5");}     /*o*/
nh               {printf("o6");}      /*o*/
t                {printf("o7");}
th               {printf("o8");}      /*o*/
n                {printf("o9");}      /*o*/
p                {printf("o10");}      /*o*/   
ph               {printf("o11");}      /*o*/
m                {printf("o12");}      /*o*/
y                {printf("o13");}      /*o*/
r                {printf("o14");}       /*o*/
l                {printf("o15");}      /*o*/
v                {printf("o16");}
d                {printf("o17");}      /*?*/
th               {printf("o18");}      /*?*/
}

    /*osoundsc*/ 
k                {printf("z1");}      
kh               {printf("z2");}      /*o*/
ng               {printf("z3");}      /*o*/
ch               {printf("z4");}      /*o*/
chh              {printf("z5");}     /*o*/
nh               {printf("z6");}      /*o*/
t                {printf("z7");}
th               {printf("​z8");}      /*o*/
n                {printf("z9");}      /*o*/
p                {printf("z10");}      /*o*/   
ph               {printf("z11");}      /*o*/
m                {printf("z12");}      /*o*/
y                {printf("z13");}      /*o*/
r                {printf("z13");}       /*o*/
l                {printf("z14");}      /*o*/
v                {printf("z15");}
d                {printf("z16");}      /*?*/
th               {printf("z17");}      /*?*/
}

    /*SCcombination*/

g               {printf("s1");}      /*?*/
n               {printf("s2");}      /*?*/
f               {printf("s3");}      /*?*/
z               {printf("s4");}      /*?*/
}


    /*fsoundv*/

u                {printf("ឹ");}      /*?*/
er               {printf("ឺ");}      /*?*/
e                {printf("េ");}      /*?*/               
aer               {printf("ែ");}      /*?*/
ou               {printf("ួ");}      /*?*/
ue               {printf("ៀ");}      /*?*/
ie               {printf("ៀ");}      /*?*/
}

    /*asoundv*/
a                {printf("v1");}      /*?*/              
e                {printf("v2");}      /*?*/
i               {printf("v3");}      /*?*/
o                {printf("v4");}      /*?*/
au               {printf("v5");}      /*?*/
ar               {printf("v6");}      /*?*/
a                {printf("v7");}      /*?*/              
e                {printf("v8");}      /*?*/
ei               {printf("v9");}      /*?*/
ai               {printf("v10");}      /*?*/
ao               {printf("v11");}      /*?*/
av               {printf("v12");}      /*?*/
}


    /*osoundv*/

u                {printf("g1");}      /*?*/
ou               {printf("g2");}      /*?*/
er               {printf("g3");}      /*?*/
ea               {printf("g4");}      /*?*/              
i                {printf("g5");}      /*?*/
ei               {printf("g6");}
ie               {printf("g7");}      /*?*/
or               {printf("g8");}      /*?*/
ov               {printf("g9");}      /*?*/
}

    /*adiacritics*/
ou              {printf("h1");}      /*?*/
o               {printf("h2");}      /*?*/
ae               {printf("h3");}      /*ae*/
ah              {printf("h4");}       /*?*/
ih               {printf("h5");}      /*?*/
oh               {printf("h6");}
eh|is               {printf("h7");}
orh              {printf("h8");}  
}

    /*odiacritics*/ 
um               {printf("d1");}      
oam               {printf("d2");}     
unknown          {printf("d3");}
eas               {printf("d4");}      
ih               {printf("d5");}      
oh               {printf("d6");}
es               {printf("d7");}
ouh              {printf("d8");} */ 
}


    /*iv*/
   
" "ae" "?               {printf("i1");}      /*?*/
reu              {printf("i2");}
our              {printf("i3");}
ov               {printf("i4");}  
} 


 /* rule */   



%%
int main () {
    yylex();
    return 0;
}