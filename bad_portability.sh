#!/usr/bin/env bash
# bad_portability.sh - Portability issues (prints only)

printf "==== Portability ===\n"
# Brace expansion may not be portable to /bin/sh
printf "Portability: echo {1..10}\n"
echo "DRYRUN: echo {1..10}  # not portable to sh"

# local is not posix
printf "Portability: local var=value (not in sh)\n"
echo "DRYRUN: local var=value"
