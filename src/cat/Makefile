CC=gcc
CFLAGS=-Wall -Wextra -Werror

s21_cat:
	$(CC) $(CFLAGS) -g --std=c11 cat.c -o s21_cat
clean:
	rm -rf s21_cat *.txt
clang:
	clang-format -i *.c *.h || echo "OK"
	clang-format -n *.c *.h || echo "OK"
cppcheck:
	cppcheck --enable=all --suppress=missingIncludeSystem *.c *.h
memcheck:
	valgrind --tool=memcheck --leak-check=yes ./s21_cat
rebuild: clean s21_cat

test: clean
	$(CC) $(CFLAGS) -g --std=c11 cat.c -o cat	
	bash tests.sh
	rm -rf cat