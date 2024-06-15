@echo off

SET JobName=debug_core1

::skip due to the relative path from test program to pattern.
goto start_label
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
SET DlogFolder=.\dlog
IF not exist %DlogFolder% (
		echo folder %DlogFolder% does not exist, create it
		md %DlogFolder%
) ELSE (
	echo folder %DlogFolder% exist
)

:start_label
::copy the loadfile_t.txt to loadfile_JobName.txt
::appand the dlog setup into loadfile_JobName.txt
::dlog format: dlog_jobname_ddmmyy_minhr.txt/std
SET YY=%DATE:~-2%
SET MM=%DATE:~-7,2%
SET DD=%DATE:~-10,2%
SET MIN=%TIME:~-8,2%
SET HR=%TIME:~-11,2%
echo MIN = %MIN%
echo HR = %HR%
COPY .\loadfile_cfg\loadfile_t.txt .\loadfile_cfg\loadfile_%JobName%.txt
echo DatalogOn >> .\loadfile_cfg\loadfile_%JobName%.txt
echo DatalogToFile .\dlog\dlog_%JobName%_%DD%%MM%%YY%_%MIN%%HR%.txt >> .\loadfile_cfg\loadfile_%JobName%.txt
echo DatalogToSTDF .\dlog\dlog_%JobName%_%DD%%MM%%YY%_%MIN%%HR%.std >> .\loadfile_cfg\loadfile_%JobName%.txt

IGLinkCL -i .\SOC_123.igxlProj ^
		-j %JobName% ^
		-e .\%JobName%.xlsm ^
		-f .\loadfile_cfg\loadfile_%JobName%.txt ^
		-r -v -o

cmd /k