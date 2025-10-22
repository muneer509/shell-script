
#!/bin/bash
echo "All variables pass as args: $@"
echo "No of vars pass as args: $#"
echo "script name: $0"
echo "Current dir: $PWD"
echo "home directory  of user:$HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of last bg command: $!"
