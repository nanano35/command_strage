#!/bin/bash
# SPDX-FileCopyrightText:2026 Yoshiaki Iwasawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目のテスト失敗
       res=1
}

res=0

out=$(echo eEze | ./robosys_task1)
[ "$?" = 0 ]            || ng "LINENO"
[ "${out}" = 3.000000 ] || ng "LINENO"

out=$(echo eZ z | ./robosys_task1)
[ "$?" = 0 ]            || ng "LINENO"
[ "${out}" = 0.500000 ] || ng "LINENO"

out=$(echo eEあ7!z* | ./robosys_task1)
[ "$?" = 0 ]            || ng "LINENO"
[ "${out}" = 2.000000 ] || ng "LINENO"


[ "${res}" = 0 ] && echo OK

exit $res

