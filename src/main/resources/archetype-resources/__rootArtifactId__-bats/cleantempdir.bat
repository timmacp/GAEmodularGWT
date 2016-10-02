del C:\Users\pc123\AppData\Local\Temp\gwt*  
del C:\Users\pc123\AppData\Local\Temp\ImageResourceGenerator*  
del C:\Users\pc123\AppData\Local\Temp\uiBinder*  
del C:\Users\pc123\AppData\Local\Temp\com.timmacp.client*  
del C:\Users\pc123\AppData\Local\Temp\appcfg*  
del C:\Users\pc123\AppData\Local\Temp\enhance*  
del C:\Users\pc123\AppData\Local\Temp\site*  
del C:\Users\pc123\AppData\Local\Temp\tomcat*  
for /D %%f in (C:\Users\pc123\AppData\Local\Temp\gwt*) do rmdir %%f /s /q
for /D %%f in (C:\Users\pc123\AppData\Local\Temp\jetty*) do rmdir %%f /s /q
for /D %%f in (C:\Users\pc123\AppData\Local\Temp\appcfg*) do rmdir %%f /s /q
pause
