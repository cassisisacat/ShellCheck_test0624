#!/usr/bin/env bash
# bad_common_mistakes.sh - Common beginner mistakes (prints only)

printf "==== Common beginner's mistakes ===\n"
# Spaces around =
printf "Bad assignment: var = 42\n"
echo "DRYRUN: var = 42"
# Using $ in assignments
printf "Bad: $foo=42\n"
echo "DRYRUN: $foo=42"

# Using wrong positional parameter reference
printf "Bad: echo \"Argument 10 is $10\"\n"
echo "DRYRUN: echo \"Argument 10 is $10\""
