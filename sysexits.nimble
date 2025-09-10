# Package

version = "0.1.0"
author = "sasa+1"
description = "sysexits.h porting for Nim"
license = "MIT"
skipDirs = @["tests"]
srcDir = "src"

# Dependencies

requires "nim >= 1.0.0"

# Tasks

task clean, "Remove generated files":
  rmFile "tests/sysexits"

task format, "Format source files":
  exec r"find . -type f \( -name '*.nim' -or -name '*.nimble' \) -exec nimpretty {} +"

task lint, "Run style checks":
  ## cannot check nimble file
  exec r"find . -type f -name '*.nim' -exec nim check --styleCheck:error {} \;"

task test, "Run tests":
  exec "nim c -r tests/sysexits.nim"
  rmFile "tests/sysexits"
