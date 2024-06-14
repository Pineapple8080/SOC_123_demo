@echo off


SET GenFolder=.\output_TP
echo check whether folder %GenFolder% exist or not
IF not exist %GenFolder% (
		echo folder %GenFolder% deos not exist, create it
		md %GenFolder%
) ELSE (
	echo folder %GenFolder% exist
)
echo copy simulatedconfig to %GenFolder% folder
COPY SimulatedConfig.txt %GenFolder%

cmd /k
