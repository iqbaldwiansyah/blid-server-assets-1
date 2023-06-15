@echo off
echo Building mod package...
.\modpackager\ModPackager.exe -i ".\buildconfig.json" -o ".\output"

echo Done!
ping 127.0.0.1 > nul
