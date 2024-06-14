@echo off


SET JobName=debug_core1


::setup the directory used to save the test program (.xlsm)
::and copy the simulatedconfig file into the folder (overwrite)
SET TPFolder=.\output_TP
echo check whether folder %TPFolder% exist or not
IF not exist %TPFolder% (
		echo folder %TPFolder% deos not exist, create it
		md %TPFolder%
) ELSE (
	echo folder %TPFolder% exist
)
echo copy simulatedconfig to %TPFolder% folder
COPY SimulatedConfig.txt %TPFolder%	

::setup the directory used to save the dlog
echo check whether folder dlog exist or not
SET GenFolder=.\dlog
IF not exist %GenFolder% (
		echo folder %GenFolder% does not exist, create it
		md %GenFolder%
) ELSE (
	echo folder %GenFolder% exist
)


IGLinkCL -i .\iglink_cfg\SOC_123.igxlProj ^
		-j %JobName% ^
		-e %TPFolder%\%JobName%.xlsm ^
		-f .\loadfile_cfg\loadfile_A.txt ^
		-r -v -o

cmd /k