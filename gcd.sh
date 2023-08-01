#!/usr/bin/bash

#入力数チェック

if [ $# -ne 2 ]; then
        echo "Error: Please input 2 parameters"
        echo "Error: Please input 2 parameters" > /tmp/$$-result
        exit 1
fi

#入力が適切か

if [[ $1 =~ [a-z]+$ ]] || [[ $1 =~ [a-z]+$ ]] ; then
        echo "Error: Please input number"
        echo "Error: Please input number" > /tmp/$$-result
        exit 1
fi

# 負の数の入力があった場合

if [ $1 -le 0 ] || [ $2 -le 0 ]; then
        echo "Error: Please input natural number"
        echo "Error: Please input natural number" > /tmp/$$-result
        exit 1
fi

#メインの処理


gcd() {
        if [ $1 -eq  0 ]; then
          echo $2
        else
          gcd $(($2 % $1)) $1
        fi
      }

gcd $1 $2


