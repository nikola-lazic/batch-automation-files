@ECHO OFF
COLOR 0A
ECHO ------------------------
ECHO Create folder structure
ECHO ------------------------
set /p project="Enter Project Name: "
 
MkDir "%project%\01-Reference\"
MkDir "%project%\01-Reference\Client\"
MkDir "%project%\01-Reference\Older_projects\"

MkDir "%project%\02-Doc\"

MkDir "%project%\03-Email\"
MkDir "%project%\03-Email\In\"
MkDir "%project%\03-Email\Out\"

MkDir "%project%\04-Working\"

MkDir "%project%\05-Analysis\"

MkDir "%project%\06-Final\"

:: NOTE:
:: It's possible to define a absolut path: 
:: MkDir "C:\Projects\%project%\01-Doc\"