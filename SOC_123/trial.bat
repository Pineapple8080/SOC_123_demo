@echo off

SET YY=%DATE:~-2%
SET MM=%DATE:~-7,2%
SET DD=%DATE:~-10,2%
SET MIN=%TIME:~-8,2%
SET HR=%TIME:~-11,2%

echo MIN = %MIN%
echo HR = %HR%

SET JobName=debug_core1
COPY .\loadfile_cfg\loadfile_t.txt .\loadfile_cfg\loadfile_%JobName%.txt
echo DatalogOn >> .\loadfile_cfg\loadfile_%JobName%.txt
echo DatalogToFile ..\dlog\dlog_%JobName%_%DD%%MM%%YY%_%MIN%%HR%.txt >> .\loadfile_cfg\loadfile_%JobName%.txt
echo DatalogToSTDF ..\dlog\dlog_%JobName%_%DD%%MM%%YY%_%MIN%%HR%.std >> .\loadfile_cfg\loadfile_%JobName%.txt

cmd /k
