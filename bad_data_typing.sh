#!/usr/bin/env bash
# bad_data_typing.sh - Data and typing errors (prints only)

printf "==== Data and typing errors ===\n"
# Assigning arrays to strings
printf "Bad: args=\"$@\" (loses arrayness)\n"
echo "DRYRUN: args=\"\$@\""

# Referencing arrays as strings
printf "Bad: files=(foo bar); echo \"$files\"\n"
files=(foo bar)
echo "$files"  # shows only first element in many shells

printf "Fixed: echo \"${files[@]}\"\n"
echo "${files[@]}"
