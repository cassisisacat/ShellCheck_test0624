#!/usr/bin/env bash
# bad_miscellaneous.sh - Miscellaneous examples (prints only)

printf "==== Miscellaneous ===\n"
# Unicode quotes
printf "Bad: rm “file” (unicode quotes)\n"
echo "DRYRUN: rm “file”"

# PATH with literal tilde
printf "Bad: PATH=\"$PATH:~/bin\"\n"
echo "DRYRUN: PATH=\"$PATH:~/bin\""

# PS1 example (colors not wrapped in \[ \])
printf "Bad PS1: PS1='\\e[0;32m\\$\\e[0m '\n"
echo "DRYRUN: PS1='\\e[0;32m\\$\\e[0m '"

# Examples you should never run directly (printed only)
echo "DRYRUN: rm -rf \"\$STEAMROOT/\"*  # catastrophic; printed only"
echo "DRYRUN: find . -exec sh -c 'a && b {}' \\;  # potential shell injection"
