#!/bin/bash


lex recognize_verbs.l

gcc lex.yy.c -o recognize_verbs -ll

./recognize_verbs < input.txt

