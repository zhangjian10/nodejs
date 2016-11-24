@echo off    

gulp --gulpfile %~dp0..\script\build.js --path %cd% %*  

pause 1>nul  
