#!/usr/bin/env bash
# bad_robustness.sh - Robustness examples (some small harmless actions)

printf "==== Robustness ===\n"
# Iterating over ls output (bad)
mkdir -p /tmp/bad_ls_demo
touch /tmp/bad_ls_demo/a.txt /tmp/bad_ls_demo/b.txt
printf "Bad: for f in \$(ls /tmp/bad_ls_demo/*.txt); do echo \$f; done\n"
for f in $(ls /tmp/bad_ls_demo/*.txt); do
    printf "Iterating (bad): %s\n" "$f"
done

# Masked exit codes
printf "Bad: export MYVAR=\$(false) ; echo exit status masked\n"
export MYVAR=$(false);
echo "MYVAR set to: '$MYVAR' (exit status of false was masked by assignment)"

# Shadowed case branches example shown (not executed)
echo "DRYRUN: case \$version in 2.*) ...;; 2.6.*) ...;; esac"
