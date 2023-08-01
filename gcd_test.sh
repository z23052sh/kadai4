#!/usr/bin/bash


# テスト1 最大公約数がちゃんと計算できているか

echo "2" > /tmp/$$-ans
./gcd.sh 4 2  > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo  "テスト1" >> /tmp/$$-error.log

# テスト2 入力引数が適切か

echo "Error: Please input number" > /tmp/$$-ans
./gcd.sh a b > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo  "テスト2" >> /tmp/$$-error.log

# テスト3 正の自然数以外が入力されているか

echo "Error: Please input natural number" > /tmp/$$-ans
./gcd.sh -5 3 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo  "テスト3" >> /tmp/$$-error.log

# テスト4 引数の数が正常か

echo "Error: Please input 2 parameters" > /tmp/$$-ans
./gcd.sh 5 3 3 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo  "テスト4" >> /tmp/$$-error.log



if [ -f /tmp/$$-error.log ];then
        cat /tmp/$$-error.log 1>&2
        rm -f /tmp/$$-*
        exit 1
fi


