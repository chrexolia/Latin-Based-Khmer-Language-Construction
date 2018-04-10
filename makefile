khro:khroK.l khroL.l
	flex khroK.l 
	flex khroL.l 
	gcc lex.yy.c khroK.c -o khro

test.txt: khro Example_test.txt 
	./khro < Example_test.txt > test.txt