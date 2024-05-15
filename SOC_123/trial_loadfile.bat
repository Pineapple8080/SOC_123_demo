@echo off

echo check whether folder output_TP exist or not
SET GenFolder=.\output_TP
if not exist %GenFolder% (
		md %GenFolder%
)	

echo check whether folder dlog exist or not
SET GenFolder=.\dlog
if not exist %GenFolder% (
		md %GenFolder%
)	


IGLinkCL -i .\iglink_cfg\SOC_123.igxlProj ^
		-j debug_testA ^
		-e .\output_TP\TestProgam.xlsm ^
		-f .\loadfile_cfg\loadfile_A.txt ^
		-r -v -o

::pasue
cmd /k