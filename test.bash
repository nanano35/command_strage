#!/bin/bash
# SPDX-FileCopyrightText:2026 Yoshiaki Iwasawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目のテスト失敗
       res=1
}

res=0

out=$(echo eEze | ./Frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 3.00 ] || ng "$LINENO"

out=$(echo eZ z | ./Frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 0.50 ] || ng "$LINENO"

out=$(echo eEあ7!z* | ./Frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 2.00 ] || ng "$LINENO"

out=$(echo zzZZzz | ./Frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 0.00 ] || ng "$LINENO"

out=$(echo あいうえおrp50{} | ./Frequency_comparison)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo eeEEE | ./Frequency_comparison)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res

