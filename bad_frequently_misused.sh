#!/usr/bin/env bash
# bad_frequently_misused.sh - Frequently misused commands (prints only)

printf "==== Frequently misused commands ===\n"
# Redirecting with sudo (common mistake)
printf "Bad: sudo echo 'Var=42' > /etc/profile\n"
echo "DRYRUN: sudo echo 'Var=42' > /etc/profile"

# Using command substitutions incorrectly
printf "Bad: time --format=%s sleep 1\n"
echo "DRYRUN: time --format=%s sleep 1"

# Using alias with arguments
printf "Bad alias with arguments: alias archive='mv $1 /backup'\n"
echo "DRYRUN: alias archive='mv $1 /backup'"
