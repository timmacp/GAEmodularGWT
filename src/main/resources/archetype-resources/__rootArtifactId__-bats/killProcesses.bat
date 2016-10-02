for /f "tokens=5" %%a in ('netstat -aon ^| findstr :9876.*LISTENING') do taskkill /f /pid %%a
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8080.*LISTENING') do taskkill /f /pid %%a
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :1044.*LISTENING') do taskkill /f /pid %%a
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8888.*LISTENING') do taskkill /f /pid %%a
pause 
