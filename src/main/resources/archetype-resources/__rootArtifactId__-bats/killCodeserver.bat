for /f "tokens=5" %%a in ('netstat -aon ^| findstr :9876.*LISTENING') do taskkill /f /pid %%a
pause 
