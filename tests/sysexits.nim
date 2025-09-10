import std/unittest
import ../src/sysexits

suite "sysexits constants":

  test "ExOk constant":
    check ExOk == 0

  test "ExBase constant":
    check ExBase == 64

  test "ExUsage constant":
    check ExUsage == 64

  test "ExDataerr constant":
    check ExDataerr == 65

  test "ExNoinput constant":
    check ExNoinput == 66

  test "ExNouser constant":
    check ExNouser == 67

  test "ExNohost constant":
    check ExNohost == 68

  test "ExUnavailable constant":
    check ExUnavailable == 69

  test "ExSoftware constant":
    check ExSoftware == 70

  test "ExOserr constant":
    check ExOserr == 71

  test "ExOsfile constant":
    check ExOsfile == 72

  test "ExCantcreat constant":
    check ExCantcreat == 73

  test "ExIoerr constant":
    check ExIoerr == 74

  test "ExTempfail constant":
    check ExTempfail == 75

  test "ExProtocol constant":
    check ExProtocol == 76

  test "ExNoperm constant":
    check ExNoperm == 77

  test "ExConfig constant":
    check ExConfig == 78

  test "ExMax constant":
    check ExMax == 78

suite "sysexits consistency":

  test "ExBase and ExUsage should be equal":
    check ExBase == ExUsage

  test "ExMax and ExConfig should be equal":
    check ExMax == ExConfig
