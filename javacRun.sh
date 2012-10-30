#!/bin/sh 
#
echo "File that will be executed: $1/$2.class";
echo "****************************************";
cd "$1";

echo "Compiling Java sourcecode...";
/usr/bin/javac "$2.java";
if [ $? == 0 ]; then { 
   echo "Running the compiled code...";

/usr/bin/osascript <<END 
tell application "Terminal" to activate
tell application "Terminal"
    do script "echo \"--------------------BEGIN-SCRIPT------------------------\"; cd \"$1\"; java $2; echo \"--------------------BEGIN-SCRIPT------------------------\";"
end tell
END

} else {
   echo "Compiling error, no .class file created";
} fi