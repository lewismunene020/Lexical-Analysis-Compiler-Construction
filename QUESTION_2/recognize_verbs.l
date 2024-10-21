%{
%}

%%
is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go  { printf("Verb found: %s\n", yytext); }
[a-zA-Z]+                                                                                 { /* Ignore other words */ }
.|\n                                                                                      { /* Ignore any other character */ }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
