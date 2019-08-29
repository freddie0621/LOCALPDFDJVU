echo off
cls
for %%1 in ("*.djvu") do (
SANITYFILE.exe --file="%%1"
)

call renameseriedjvu.bat




echo on
set chaine=COUVERTURE_
set chaine1=COUVERTURE_
chcp 852
echo ‚ c
echo off
cls
set renamefile=_PK_
SET /P clef=Entrez les clefs s‚par‚s par  des tirets -:
echo %clef%
pause
 




 

::for %%1 in ("*.PDF") do  convert -density 144 %%1[0] -trim "%chaine%%%~n1.jpg"

for %%1 in ("*.djvu") do  i_view32.exe  %%1 /convert "%chaine%%%~n1.jpg"
pause
::for %%1 in ("*.pdf") do  rename %%1 AAA_%%1


for %%1 in ("*.djvu") do (

::curl "http://pikooli.com/JSONPDFS/recupepubsopfinjson.php?photos=%chaine1%%%~n1.jpg&clefbatch=%clef%&pdfs=%%1"  
)

move COUVERTURE*.jpg %cd%\COUVERTURE\CURL

move *.djvu %cd%\PDFS\CURL
pause