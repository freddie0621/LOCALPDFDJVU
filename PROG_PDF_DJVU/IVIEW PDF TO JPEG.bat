::rd /Q /s Plugins 

::i_view32.exe dunod.pdf /convert=cancan.jpg
set chaine=COUVERTURE_
::for %%1 in ("*.PDF") do  i_view32.exe  %%1 /convert "%chaine%%%~n1.jpg"
xcopy "%~dp0PROG_PDF_DJVU"  "%~dp0" /s /y
for %%1 in ("*.PDF") do i_view32.exe  %%1 /convert "%%~n1.jpg"
pause
::for %%1 in ("*.djvu") do  i_view32.exe  %%1 /convert "%chaine%%%~n1.jpg"
for %%1 in ("*.djvu") do  i_view32.exe  %%1 /convert "%%~n1.jpg"
rd /Q /s Plugins 

del /q i_view*.*
pause