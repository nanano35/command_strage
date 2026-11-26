#!/bin/bash
# SPDX-FileCopyrightText: 2026 Yoshiaki Iwasawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目のテスト失敗
       res=1
}

res=0

out=$(echo eEze | ./frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 3.00 ] || ng "$LINENO"

out=$(echo eZ z | ./frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 0.50 ] || ng "$LINENO"

out=$(echo eEあ7!z* | ./frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 2.00 ] || ng "$LINENO"

out=$(echo zzZZzz | ./frequency_comparison)
[ "$?" = 0 ]            || ng "$LINENO"
[ "${out}" = 0.00 ] || ng "$LINENO"

out=$(echo あいうえおrp50{} | ./frequency_comparison)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo eeEEE | ./frequency_comparison)
[ "$?" = 1 ]            || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res

