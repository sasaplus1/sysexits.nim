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

import os

task clean, "Remove generated files":
  rmFile "tests/sysexits"

task format, "Format source files":
  for file in walkDirRec("."):
    if file.endsWith(".nim") or file.endsWith(".nimble"):
      exec "nimpretty " & file

task lint, "Run style checks":
  ## cannot check nimble file
  for file in walkDirRec("."):
    if file.endsWith(".nim"):
      exec "nim check --styleCheck:error " & file

task test, "Run tests":
  exec "nim c -r tests/sysexits.nim"
  rmFile "tests/sysexits"
