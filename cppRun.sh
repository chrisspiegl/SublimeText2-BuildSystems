#!/bin/sh 
#
echo "File that will be executed: $1/$3";
echo "****************************************";
cd "$1";

echo "Compiling C++ sourcecode...";
/usr/bin/g++ $2 -o $3;
if [ $? == 0 ]; then { 
   echo "Running the compiled code...";

/usr/bin/osascript <<END 
tell application "Terminal" to activate
tell application "Terminal"
    do script "echo \"--------------------BEGIN-SCRIPT------------------------\"; cd \"$1\"; ./$3; echo \"----------------------END-SCRIPT------------------------\";"
end tell
END

} else {
   echo "Compiling error, no binary file created";
} fi