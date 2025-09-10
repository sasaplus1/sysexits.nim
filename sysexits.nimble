# Package

version       = "0.1.0"
author        = "sasa+1"
description   = "sysexits.h porting for Nim"
license       = "MIT"
skipDirs      = @["tests"]
srcDir        = "src"

# Dependencies

requires "nim >= 1.0.0"

# Tasks

task clean, "Remove generated files":
  rmFile "tests/sysexits"

task test, "Run tests":
  exec "nim c -r tests/sysexits.nim"
  rmFile "tests/sysexits"
