#!/bin/bash

# 異常系：引数の数が不正
## 引数: 0個
./greatest_common_divisor.sh 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数がない場合はエラー終了すること"
  exit 1
fi

## 引数: 1個
./greatest_common_divisor.sh 1 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が1つの場合はエラー終了すること"
  exit 1
fi

## 引数: 3個
./greatest_common_divisor.sh 1 1 1 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が3つの場合はエラー終了すること"
  exit 1
fi

# 異常系：引数の値が不正
## 引数：文字列が含まれる（バリエーションA）
./greatest_common_divisor.sh a b 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数に文字列が含まれる場合はエラー終了すること"
  exit 1
fi

## 引数：文字列が含まれる（バリエーションB）
./greatest_common_divisor.sh 4 b 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数に文字列が含まれる場合はエラー終了すること"
  exit 1
fi

## 引数：文字列が含まれる（バリエーションC）
./greatest_common_divisor.sh a 4 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数に文字列が含まれる場合はエラー終了すること"
  exit 1
fi

## 引数：小数点が含まれる
./greatest_common_divisor.sh 1.1 1.1 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数に小数点が含まれる場合はエラー終了すること"
  exit 1
fi

## 引数：負の数が含まれる
./greatest_common_divisor.sh -12 4 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数に負の数が含まれる場合はエラー終了すること"
  exit 1
fi

# 正常系
## 12, 4 => 4
if [ "$(./greatest_common_divisor.sh 12 4)" -ne 4 ]; then
  echo "failed: 12, 4を渡した場合、標準出力に4が出力されること"
  exit 1
fi

## 4, 12 => 4
if [ "$(./greatest_common_divisor.sh 4 12)" -ne 4 ]; then
  echo "failed: 4, 12を渡した場合、標準出力に4が出力されること"
  exit 1
fi

## 121, 11=> 11
if [ "$(./greatest_common_divisor.sh 121 11)" -ne 11 ]; then
  echo "failed: 121, 11を渡した場合、標準出力に11が出力されること"
  exit 1
fi

## 11, 121=> 11
if [ "$(./greatest_common_divisor.sh 11 121)" -ne 11 ]; then
  echo "failed: 11, 121を渡した場合、標準出力に11が出力されること"
  exit 1
fi
