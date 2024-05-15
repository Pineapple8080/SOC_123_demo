@echo off

IGLinkCL -i .\iglink_cfg\SOC_123.igxlProj ^
		-j debug_testA ^
		-e .\output_TP\TestProgam.xlsm ^
		-f .\loadfile_cfg\loadfile_A.txt ^
		-r -v -o

::pasue
cmd /k