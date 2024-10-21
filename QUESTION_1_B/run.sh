#!/bin/bash



lex replace_abc.l



gcc lex.yy.c -o replace_abc -ll



./replace_abc < input.txt

