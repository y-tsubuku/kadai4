#!/bin/bash

# 引数がない場合はエラー終了すること
./greatest_common_divisor.sh 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数がない場合はエラー終了すること"
  exit 1
fi

# 引数が1つの場合はエラー終了すること
./greatest_common_divisor.sh 1 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が1つの場合はエラー終了すること"
  exit 1
fi

# 引数が3つの場合はエラー終了すること
./greatest_common_divisor.sh 1 1 1 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が3つの場合はエラー終了すること"
  exit 1
fi

# 引数が3つの場合はエラー終了すること
./greatest_common_divisor.sh 1 1 1 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が3つの場合はエラー終了すること"
  exit 1
fi

# 引数が整数でない場合はエラー終了すること
./greatest_common_divisor.sh a b 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が整数でない場合はエラー終了すること"
  exit 1
fi

./greatest_common_divisor.sh 4 b 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が整数でない場合はエラー終了すること"
  exit 1
fi

./greatest_common_divisor.sh a 4 2>/dev/null
if [ $? -ne 1 ]; then
  echo "failed: 引数が整数でない場合はエラー終了すること"
  exit 1
fi

# 12, 4を渡した場合、標準出力に4が出力されること
if [ "$(./greatest_common_divisor.sh 12 4)" -ne 4 ]; then
  echo "failed: 12, 4を渡した場合、標準出力に4が出力されること"
  exit 1
fi

# 4, 12を渡した場合、標準出力に4が出力されること
if [ "$(./greatest_common_divisor.sh 4 12)" -ne 4 ]; then
  echo "failed: 4, 12を渡した場合、標準出力に4が出力されること"
  exit 1
fi

# 121, 11を渡した場合、標準出力に11が出力されること
if [ "$(./greatest_common_divisor.sh 121 11)" -ne 11 ]; then
  echo "failed: 121, 11を渡した場合、標準出力に11が出力されること"
  exit 1
fi

# 11, 121を渡した場合、標準出力に11が出力されること
if [ "$(./greatest_common_divisor.sh 11 121)" -ne 11 ]; then
  echo "failed: 11, 121を渡した場合、標準出力に11が出力されること"
  exit 1
fi
