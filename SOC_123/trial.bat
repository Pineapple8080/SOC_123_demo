@echo off

SET JobName=debug_core1
IGLinkCL -i .\SOC_123.igxlProj ^
		-j %JobName% ^
		-e .\%JobName%.xlsm ^
		-f .\loadfile_cfg\loadfile_%JobName%.txt ^
		-r -v -o

cmd /k
