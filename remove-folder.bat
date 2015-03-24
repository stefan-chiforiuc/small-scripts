ECHO OFF 
CLS
SET tempPath="%ProgramData%\temp"
ECHO This will remove all files and folders from: %tempPath%
TIMEOUT 3
RMDIR /S /Q %tempPath%
IF exist %tempPath% (ECHO SOMETHING WENT WRONG!!!) ELSE (ECHO Done!!!)
TIMEOUT 3