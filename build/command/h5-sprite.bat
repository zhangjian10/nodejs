@echo off    

gulp --gulpfile %~dp0..\script\sprite.js --path %cd% %*  

pause 1>nul  
