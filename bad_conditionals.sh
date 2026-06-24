#!/usr/bin/env bash
# bad_conditionals.sh - Examples of problematic conditionals (prints only)

printf "==== Conditionals ===\n"
# Missing spaces in test operators
foo=0
printf "Bad test (missing spaces): [ $foo==0 ]\n"
echo "DRYRUN: [ $foo==0 ]"
# Correct form
printf "Fixed test: [ \"$foo\" -eq 0 ]\n"
if [ "$foo" -eq 0 ]; then
    echo "foo is zero (correct test)"
fi

# Existence checks on globs (bad)
printf "Bad: [ -e *.mpg ] (expands to multiple files)\n"
echo "DRYRUN: [ -e *.mpg ]"
