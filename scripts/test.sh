#!/bin/bash

# run in contests/abcXXX/{a-f}/

ls -1 inouts/in* | while read FILE; do 
  echo $FILE
  # 'head -c -1' for trim trailing newline; https://qiita.com/kkdd/items/35707fa38358ec8c17fc
  actual=$(cat $FILE | time ruby main.rb | head -c -1)
  expected=$(echo $FILE | sed 's|inouts/in|inouts/out|' | xargs cat)
  if [[ "$actual" = "$expected" ]]; then
    echo "=> OK"
  else
    echo "=> NG"
    echo "$actual"
    echo "---"
    echo "$expected"
  fi
  echo "====="
done
