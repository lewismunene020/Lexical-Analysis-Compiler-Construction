%{
%}

%%
[a-zA-Z]*abc[a-zA-Z]*  { 
    /* Replace "abc" with "ABC" in the matched string */
    for (int i = 0; i < yyleng; i++) {
        if (yytext[i] == 'a' && yytext[i+1] == 'b' && yytext[i+2] == 'c') {
            printf("ABC");
            i += 2; /* Skip the next two characters since we replaced "abc" */
        }
        else {
            printf("%c", yytext[i]);
        }
    }
}
.|\n    { printf("%s", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
