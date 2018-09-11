@echo off
REM Use this Batch file to wirelessly conenct to an Android Phone for code development
REM This assumes that you have previously connected your phone to the router, and that you have  
REM locked in it's IP addresses (so the router assigns the same address each time).  
REM Edit the lines at the end of this batch file to match the IP addresses assigned to the phone.
REM
REM *****  For more help, go to www.YouTube.com/user/GEARSinc/playlists
REM
echo --  Starting ADB
cd C:\Users\sanja\AppData\Local\Android\sdk\platform-tools

Timeout 10

adb disconnect

echo -- Make sure the phone is connected to the computer via USB

set /p ok= --  Hit enter when phone has been plugged in and recognized: 

Timeout 10
 
adb tcpip 55555

Timeout 5
REM -----   Edit this line to have your Phones IP address.
adb connect 192.168.49.1:55555

adb devices

set /p ok= --  Unplug the phone and hit Enter to see the final connection.
adb devices
adb connect 192.168.49.1:55555

Timeout 5
adb devices

set /p ok= --  Press Enter to Exit.




