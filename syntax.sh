#!/bin/bash
dos2unix syntax.sh > /dev/null 2>&1
FILE="syntax.txt"  # Change this to your real filename. Be sure it's in your pwd. 

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found."
    exit 1
fi

RED=$'\033[0;31m'
NC=$'\033[0m'

echo "Interactive AND-Search on $FILE (type 'q' to quit)"

while true; do
    echo -n "Enter one or more words to search: "
    read -r input
    if [[ "$input" == "q" ]]; then
        echo "Exiting."
        break
    fi

    IFS=' ' read -r -a terms <<< "$input"

    echo "----- Results for '$input' -----"

    while IFS= read -r line; do
        match=1
        for word in "${terms[@]}"; do
            if [[ "$line" != *"$word"* ]]; then
                match=0
                break
            fi
        done

        if [[ "$match" -eq 1 ]]; then
            highlight="$line"
            for word in "${terms[@]}"; do
                highlight=${highlight//"$word"/"$RED$word$NC"}
            done
            printf "%b\n" "$highlight"
        fi
    done < "$FILE"

    echo "----------------------------------"
done
