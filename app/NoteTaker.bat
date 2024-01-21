@echo off

if not exist C:\Users\%USERNAME%\Desktop\Quicknotes (
    mkdir C:\Users\%USERNAME%\Desktop\Quicknotes
    echo Autonote folder not found, folder created at C:\Users\%USERNAME%\Desktop\Quicknotes
)
cd C:\Users\%USERNAME%\Desktop\Quicknotes\
if not exist Notes_%DATE%.txt (
    type Notes_%DATE%.txt
    echo Notes_%DATE%.txt created
    echo NOTE ENTRIES FROM %DATE% >> Notes_%DATE%.txt
    set /p tags= "(OPTIONAL) Enter tags:"
    set /p input= "Enter note:"
) else (
  rem  set /p tags= "(OPTIONAL) Enter tags:"
    set /p input= "Enter note:"
    echo. >> Notes_%DATE%.txt
)

echo %TIME% >> Notes_%DATE%.txt
rem if not [%tags%]==[] echo Tags: %tags% >> Notes_%DATE%.txt
echo %input% >> Notes_%DATE%.txt