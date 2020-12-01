#! /bin/bash

#showing that the script is run
echo "Script initialized."
echo 
#showing where does this script run
echo "This script is currently running on $TERM"
echo

echo "Current directory is being printed: "
echo
pwd
#showing home dir
echo "Home directory : $HOME"
echo
#showing services
echo "All the services started up in runlevel 3 are listed:"
ls /etc/rc3.d/S*
echo
#ending term
echo "Script has terminated. Giving prompt back"
echo
