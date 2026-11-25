#!/bin/bash
# SPDX-FileCopyrightText:2026 Yoshiaki Iwasawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目のテスト失敗
       res=1
}

res=0

out=$(echo eEz e | ./robosys_task1)
[ "${out}" = 3.000000 ] || ng "LINENO"

[ "${res}" = 0 ] && echo OK

exit $res

