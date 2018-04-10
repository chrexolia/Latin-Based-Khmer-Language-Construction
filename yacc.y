%token <f> NUM
%%

S   :   E
    ;
E   :   '+'   T
    |T
    ;
T   : T '*'   F
    |F
    ;
F   :   '(' E ')'   
    |   '-'     F
    |   NUM

%%
