@echo off

reg query "HKEY_CLASSES_ROOT\VisualStudio.DTE.10.0" >> nul 2>&1
if %ERRORLEVEL% EQU 0 ( 
	echo VS 2010 installed.
	)

reg query "HKEY_CLASSES_ROOT\VisualStudio.DTE.11.0" >> nul 2>&1
if %ERRORLEVEL% EQU 0 ( 
	echo VS 2012 installed. 
	) 

reg query "HKEY_CLASSES_ROOT\VisualStudio.DTE.12.0" >> nul 2>&1
if %ERRORLEVEL% EQU 0 ( 
	echo VS 2013 installed. 
	) 

pause