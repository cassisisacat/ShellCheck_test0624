#!/usr/bin/env bash
# bad_style.sh - Style issues (includes a harmless demo)

printf "==== Style ===\n"
# Useless use of cat
printf "Bad style: cat file | grep foo\n"
# demonstrate harmless pipeline
printf "hello\n" > /tmp/bad_examples_demo.txt
cat /tmp/bad_examples_demo.txt | grep hello >/dev/null && echo "grep found it (but cat was useless)"

# Old arithmetic style
printf "Bad: echo $[1+2]\n"
echo "DRYRUN: echo $[1+2] (use $((1+2)) instead)"
