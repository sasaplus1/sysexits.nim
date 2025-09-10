discard """
  action: "run"
  exitcode: 0
  output: "All sysexits constants are correctly exported"
"""

import ../src/sysexits

# 各定数が正しい値を持つことを確認
assert ExOk == 0, "ExOk should be 0"
assert ExBase == 64, "ExBase should be 64"

# command line usage error
assert ExUsage == 64, "ExUsage should be 64"

# data format error
assert ExDataerr == 65, "ExDataerr should be 65"

# cannot open input
assert ExNoinput == 66, "ExNoinput should be 66"

# addressee unknown
assert ExNouser == 67, "ExNouser should be 67"

# host name unknown
assert ExNohost == 68, "ExNohost should be 68"

# service unavailable
assert ExUnavailable == 69, "ExUnavailable should be 69"

# internal software error
assert ExSoftware == 70, "ExSoftware should be 70"

# system error (e.g., can't fork)
assert ExOserr == 71, "ExOserr should be 71"

# critical OS file missing
assert ExOsfile == 72, "ExOsfile should be 72"

# can't create (user) output file
assert ExCantcreat == 73, "ExCantcreat should be 73"

# input/output error
assert ExIoerr == 74, "ExIoerr should be 74"

# temp failure; user is invited to retry
assert ExTempfail == 75, "ExTempfail should be 75"

# remote error in protocol
assert ExProtocol == 76, "ExProtocol should be 76"

# permission denied
assert ExNoperm == 77, "ExNoperm should be 77"

# configuration error
assert ExConfig == 78, "ExConfig should be 78"

# maximum listed value
assert ExMax == 78, "ExMax should be 78"

# 定数の一貫性をチェック
assert ExBase == ExUsage, "ExBase and ExUsage should be equal"
assert ExMax == ExConfig, "ExMax and ExConfig should be equal"

echo "All sysexits constants are correctly exported"