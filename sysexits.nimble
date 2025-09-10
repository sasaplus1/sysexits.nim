# Package

version       = "0.1.0"
author        = "sasa+1"
description   = "sysexits.h porting for Nim"
license       = "MIT"
skipDirs      = @["tests"]
srcDir        = "src"

# Dependencies

requires "nim >= 1.0.0"

# Dev dependencies

feature "dev":
  requires "testament"

# Tasks

task test, "Run tests":
  exec "testament pattern tests/*.nim"
  rmFile "tests/sysexits"

task clean, "Remove generated files":
  rmFile "tests/sysexits"
