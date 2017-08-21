.gba
.thumb
.open "test.gba", 0x8000000

.org 0x8f00000
.importobj "build/linked.o"

.include "armips/repoints.s"
.include "armips/bytereplacement.s"
.include "armips/hooks.s"

.close