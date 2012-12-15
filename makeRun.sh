#!/bin/sh 
#
echo "File that will be executed: $1/$3";
echo "****************************************";
cd "$1";

echo "Opening Terminal";
/usr/bin/osascript <<END 
tell application "Terminal" to activate
tell application "Terminal"
    do script "echo \"--------------------MAKE------------------------\"; cd \"$1\"; make; echo \"--------------------MAKE-RUN------------------------\"; make run; echo \"\n----------------------THE-END------------------------\";"
end tell
END