CC=gcc
CFLAGS=-Wall -Wextra -Werror

s21_grep:
	$(CC) $(CFLAGS) -g --std=c11 grep.c flags_logic.c -o s21_grep
clean:
	rm -rf s21_grep *.txt
clang:
	clang-format -i *.c *.h || true
	clang-format -n *.c *.h || true
cppcheck:
	cppcheck --enable=all --suppress=missingIncludeSystem *.c *.h || true
memcheck:
	valgrind --tool=memcheck --leak-check=yes ./s21_grep
rebuild: clean s21_grep

test: clean
	$(CC) $(CFLAGS) -g --std=c11 grep.c flags_logic.c -o grep
	bash tests.sh
	rm -rf grep