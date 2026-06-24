#!/usr/bin/env bash
# bad_quoting.sh - Examples of bad quoting (prints only)

printf "==== Quoting ===\n"
# Unquoted variables — loses word boundaries
name="Alice Bob"
printf "Unquoted variable (bad):\n"
# bad: echo $name
echo $name  # shows word splitting
printf "Quoted variable (fixed):\n"
echo "$name"

# Globs in commands and unquoted expansions
pattern=*.md
printf "Unquoted glob in command (bad): find . -name $pattern\n"
# safe demonstration only
echo "DRYRUN: find . -name $pattern"

# Tilde quoted incorrectly
printf "Quoted tilde (bad): rm \"~/my file.txt\"\n"
echo "DRYRUN: rm \"~/my file.txt\""

# Literal quotes in variable values
v='--verbose="true"'; printf "Bad: cmd $v\n"
echo "DRYRUN: cmd $v"
