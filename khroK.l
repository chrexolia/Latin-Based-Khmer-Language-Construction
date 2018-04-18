    
%option prefix= "kk"
%option outfile = "khroK.c"
%option noyywrap
 
%%
 /*[\n\t ' ']  {};
 /*asoundc*/
`                       {printf("។");}
a01/" "                 {printf("ក");}
a01/ov02                 {printf("ក");}
a01/av[0-9]+            {printf("ក");}  
a01/f03            {printf("គ");}
a01/ov[0-9]+            {printf("គ");}
a01                     {printf("ក");}
a02/av[0-9]+                     {printf("ខ");}
a02/ov[0-9]                     {printf("ឃ");}
 /*a03/ov[0-9]+            {printf("ជ");}     */ 
a16/ov[0-9]+|od[0-9]+                      {printf("ជ");} 
a16/av[0-9]+|f[0-9]|ad[0-9]+            {printf("ច");}     
a03/av[0-9]+                     {printf("ឆ");}
a03/" "                              {printf("ច");}
a04/ov[0-9]+|av[0-9]+                     {printf("ឈ");}       
a05                    {printf("ដ");}     
a07/av[0-9]+            {printf("ណ");}
a07/ov[0-9]+|fv[0-9]+         {printf("ន");}
a07                     {printf("ន");}
a07ov02014/a07                     {printf("ន");}


 /*special case*/
a01ar01/" "             {printf("ការ");}
a07ov05a01/" "?"?"      {printf("នាក់");}
a07ov05a01              {printf("អ្នក");}
a01ov02o14              {printf("ក៏");}
a01ov05" "             {printf("ក៏");}

 /*special case*/
         
a08/ad[0-9]+" "?|d                     {printf("ត");}
a08                   {printf("ត");}
a08/sc03?o16         {printf("ធ");}
a08/od[0-9]+|ov[0-9]+|fv[0-9]+|f[0-9]+    {printf("ទ");}
a08/a08fv[0-9]+         {printf("ទ");}     


a09                     {printf("ថ");}
a09                   {printf("ឋ");}
a10                     {printf("ប");} 
a11/a?|o?|av[0-9]+      {printf("ផ");}
a11/ov[0-9]+|f[0-9]            {printf("ភ");} 
      
ao12                     {printf("ស");}
ao12" "                     {printf("ស់");}       
a13                     {printf("ហ");}                  
a14/av[0-9]+            {printf("ឡ");}
a14/ov|od[0-9]+         {printf("ល");}
sc03a14                {printf("្ល");}

 /*'a14      {printf("្ល");} */


a14                     {printf("ល");}        
    /*a15              {printf("អ");}     */



od07              {printf("េះ");}

 /*osoundc*/ 
a01/ov[0-9]+               {printf("គ");}
a01/av[0-9]+|ad[0-9]+               {printf("ក");}       
o02/ov[0-9]+               {printf("ឃ");}
a02/av[0-9]+      {printf("ខ");}
a02      {printf("ខ");}
o03               {printf("ង");}      
o04               {printf("ជ");}     
o05               {printf("ឈ");}    
o06               {printf("ញ");}      
o07               {printf("ទ");}
o08/ov[0-9]+               {printf("ធ");}     
o09               {printf("ន");}   
o10             {printf("ព");}
o10              {printf("ភ");}      
o12              {printf("ម");}    
o13              {printf("យ");}     
o14              {printf("រ");}      
 
o16              {printf("វ");}
o17              {printf("ឌ");}    
o18              {printf("ឍ");}     
   


 /*SCcombination*/

s1               {printf("ហ្គ");}     
s2               {printf("ហ្ន");}     
s3               {printf("ហ្វ");}      
s4               {printf("ហ្ស៊");}     

 /*SC*/

sc01              {printf("ឥ");}
sc02             {printf("ឣ");}
sc03             {printf("្");}
sc05                 {printf("ៗ");}
 


 /*fsoundv*/

av15                {printf("ឹ");} 
ov15                {printf("ឹ");}      
 /*f02               {printf("ឺ");}  */                        
f04               {printf("ែ");}      
f05               {printf("ួ");}
f05a01/" "|[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]|[(?!abc)]             {printf("ក់");}
f06               {printf("ៀ");}     
f07               {printf("ឿ");}     


 /*fsoundv*/
av01               {printf("ា");}
ar01          {printf("ឣ");}                          
    /*av02                {printf("ិ");}   */  
av03               {printf("ី");}      
av04                {printf("ុ");}     
av05               {printf("ូ");}     
av06               {printf("ើ");} 
av06/[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]|[^a-zA-Z]              {printf("ើរ");}      
av07                {printf("ី");}                
ov08               {printf("ិ");}                    
fv10              {printf("ួ");}     
    

ao12/av03      {printf("សុ");}

 /*osoundv*/
ov01               {printf("ឺ");}
ov01/o[0-9]+              {printf("ើ");}
ov02o14/a14                  {}
ov02a08/" "|[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]              {printf("ត់");}
av05a10/" "|[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]              {printf("ប់");}
ov02a10/" "|[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]              {printf("ប់");}
ov02a07/" "|[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]              {printf("ន់");}
ov02                {printf("ុ");}  
ov02/a01" "|a01ar01         {};
ov02/o14" "         {};    
ov02/ar01" "|a01av01        {};
ov03               {printf("ាំ");}      
ov04            {printf("ើ");}   
ov05             {printf("ា");}
ov05/a01          {};        
ov06                                {printf("ិ");} 

ov07              {printf("ី");}  
ov13               {printf("ូ");}
av13               {printf("ូ");}

f03                {printf("េ");}                     
ov09               {printf("ោ");}     
ov10               {printf("ៅ");}
av12               {printf("ៅ");}       
ad03/a14|" "       {printf("ែ");}  
ad03               {printf("ែ");} 
av14               {printf("ៃ");}           
ov14               {printf("ៃ");}  

sc04           {printf("ឯ");}       
    

        

 /*d*/
ad01|od01              {printf("ុំ");}     
ad02|od02              {printf("ំ");}     
ad04|od04              {printf("ះ");}
ad05|od05               {printf("ិះ");}
ad06|od06              {printf("ុះ");}  
ad07|od07               {printf("េះ");}
ad08|od08              {printf("េាះ");} 
 /*d*/


    /*iv*/
iv01              {printf("ឯ");}      
iv02              {printf("ឬ");}
iv03             {printf("ឱ");}
iv04               {printf("ឳ");}  
 /*rules*/




%%
/*
int main () {
    yylex();
    return 0;
} */