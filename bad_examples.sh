#!/usr/bin/env bash
# bad_examples.sh - Dispatcher for per-section bad-example scripts
# Run without args to execute all section scripts; or pass a section name.

set -euo pipefail

SCRIPTDIR="$(dirname "$0")"

declare -a SCRIPTS=(
    "bad_quoting.sh"
    "bad_conditionals.sh"
    "bad_frequently_misused.sh"
    "bad_common_mistakes.sh"
    "bad_style.sh"
    "bad_data_typing.sh"
    "bad_robustness.sh"
    "bad_portability.sh"
    "bad_miscellaneous.sh"
)

usage() {
    echo "Usage: $0 [all|section-name]"
    echo "Available sections:"
    for s in "${SCRIPTS[@]}"; do
        echo "  - ${s%%.sh}"
    done
}

if [ "$#" -gt 0 ]; then
    target="$1"
    if [ "$target" = "all" ]; then
        for s in "${SCRIPTS[@]}"; do
            echo "\nRunning: $s"
            bash "$SCRIPTDIR/$s"
        done
        exit 0
    fi
    # try to match a named section
    for s in "${SCRIPTS[@]}"; do
        name="${s%%.sh}"
        if [ "$name" = "$target" ]; then
            bash "$SCRIPTDIR/$s"
            exit 0
        fi
    done
    echo "Unknown section: $target" >&2
    usage
    exit 2
fi

# default: run all
for s in "${SCRIPTS[@]}"; do
    echo "\nRunning: $s"
    bash "$SCRIPTDIR/$s"
done

echo "\nAll sections complete."
