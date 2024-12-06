touch q.txt

valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep 1 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l 1.txt 2.txt 3.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l 1.txt 2.txt 3.txt 4.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l empty.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l empty.txt 1.txt 2.txt 3.txt 4.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l only_n.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l only_n.txt 1.txt 2.txt 3.txt 4.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 1 -f patterns1.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l -f patterns1.txt -f patterns2.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -f patterns1.txt -f patterns2.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -f patterns1.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l -f patterns_empty.txt 1.txt 2.txt 3.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l -f patterns3.txt 1.txt 2.txt 3.txt 4.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -f patterns1.txt -f patterns2.txt -f patterns_empty.txt -f patterns3.txt empty.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -f patterns1.txt -f patterns2.txt -f patterns_empty.txt -f patterns3.txt empty.txt 1.txt 2.txt 3.txt 4.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -f patterns_empty.txt empty.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l -f patterns1.txt -f patterns2.txt -f patterns_empty.txt -f patterns3.txt only_n.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -e 12 -e t -e i -e l -f patterns1.txt -f patterns2.txt -f patterns_empty.txt -f patterns3.txt only_n.txt 1.txt 2.txt 3.txt 4.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -f patterns3.txt only_n.txt 1.txt 2.txt 3.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep "[[:upper:]]" 1.txt 2.txt 3.txt 4.txt only_n.txt empty.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -i -e 1 -f patterns1.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -i str 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -v -e 1 -f patterns1.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -v 1 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -h -e 1 -f patterns1.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -h 1 1.txt 2.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -s 1 1.txt qwerty >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -s -e 1 -f patterns1.txt 1.txt qwerty >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -o -e 1 -f patterns1.txt 1.txt >> q.txt
valgrind -q -s --tool=memcheck --leak-check=yes ./s21_grep -o 1 1.txt >> q.txt

rm -rf q.txt