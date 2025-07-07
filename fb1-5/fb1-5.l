%{
#include "fb1-5.tab.h"
extern int yylval;
%}

%%

[0-9]+        { yylval = atoi(yytext); return NUMBER; }
"+"           { return ADD; }
"-"           { return SUB; }
"*"           { return MUL; }
"/"           { return DIV; }
\n            { return EOL; }
[ \t]         { /* skip whitespace */ }

%%
