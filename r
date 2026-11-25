
out=$(echo あいうえおrp50{} | ./robosys_task1)
[ "$?" = 1 ]            || ng "LINENO"
[ "${out}" = 1 ] || ng "LINENO"


