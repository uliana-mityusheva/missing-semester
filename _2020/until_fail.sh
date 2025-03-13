#!/usr/bin/env bash

count=0
log="log.txt"
> "$log" 

until ! ./random.sh >> "$log" 2>&1; 
do
    count=$((count+1))
done

echo "Command failed after $count runs."
echo "Captured output:"
cat "$log"
