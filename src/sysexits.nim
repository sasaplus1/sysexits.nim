#[
This file is licensed under the MIT license.
Copyright(c) 2025 sasa+1

The definitions of exit codes are based on sysexits.h from the FreeBSD Project,
which is licensed under the 3-Clause BSD License. The original license
text is included below.

---

Copyright (c) 1987, 1993
 The Regents of the University of California.  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of the University nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

---

* https://cgit.freebsd.org/src/tree/include/sysexits.h?id=5ccaab1797e5bdc404f2299ebaec1265547a4744
* https://github.com/freebsd/freebsd-src/blob/5ccaab1797e5bdc404f2299ebaec1265547a4744/include/sysexits.h
]#

const
  ExOk* = 0           ## successful termination

  ExBase* = 64        ## base value for error messages

  ExUsage* = 64       ## command line usage error
  ExDataerr* = 65     ## data format error
  ExNoinput* = 66     ## cannot open input
  ExNouser* = 67      ## addressee unknown
  ExNohost* = 68      ## host name unknown
  ExUnavailable* = 69 ## service unavailable
  ExSoftware* = 70    ## internal software error
  ExOserr* = 71       ## system error (e.g., can't fork)
  ExOsfile* = 72      ## critical OS file missing
  ExCantcreat* = 73   ## can't create (user) output file
  ExIoerr* = 74       ## input/output error
  ExTempfail* = 75    ## temp failure; user is invited to retry
  ExProtocol* = 76    ## remote error in protocol
  ExNoperm* = 77      ## permission denied
  ExConfig* = 78      ## configuration error

  ExMax* = 78         ## maximum listed value
