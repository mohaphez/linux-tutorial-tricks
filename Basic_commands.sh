# #### Here we have most basic linux command we use during day ####

# echo is for print message Or print enviroment variable value .
  # Example ->
    echo "Hello linux user"
    echo $SHELL 
    echo $HISFILE
    echo $PATH 
    echo $TZ
    echo are you here \?
    echo yes i\`m here

# pwd show your current working directory path.
  # Example ->
    echo "Your current working directory is :"
    pwd

# cd for move your working directory to new location .
  # Example ->
    cd /var/log  # change location to /var/log folder
    cd ~         # change location to home directory
    cd -         # change your location to most recent working directory
    cd ../       # change your location to the directory above the current directory 

# type command for determine whether a command is external or internal 
  # Example ->
    type echo   # echo is a shell builtin
    type python # python is /usr/bin/python

# set command show complete list of active enviroment 
  # Example ->
    set

# which command search and find program location
  # Example ->
    which echo 

# export command preserve an environment variable`s definition
  # Example ->
    export NEWVAR=123434
    echo $NEWVAR # print 123434
 
# unset command for remove environment variable 
  # Example ->
    unset NEWVAR
    echo $NEWVAR 

# man command have pages contain documentation on a command`s purpose
  # Example ->
    man uname
    man -k pass # with -k option you have ability to search for keywords in the documentation.

# history command show list of commands you used before 
  # Example ->
    history
    echo $HISFILE # prints the history file location 
  # Note -> the history file will not have commands you have used during your current login session . if you desire to update the history file use following options 
    history -a # appends the current history list commands to end of the history file 
    history -n # appends the history commands from the current session to the current history list 
    history -r # overwrite the current history list commands with the commands stored in the history file 
  #how delete bash history 
    history -c  # delete current session history 
    history -w  # overwrites current blank history to bash history file 

# ls is a command to list system files and directories.
  # Example ->
    ls # show current directory files .
    ls /etc  # show /etc folder files . 
    ls -l    # show current directory files with more information like files type, permissions , size , modified time . 
    ls -lh   #  show current directory files with human readable size 

# The xargs command is used in a UNIX shell to convert input from standard input into arguments to a command
  # Example ->
    ls -l files-*.txt | xargs -p /usr/bin/rm 
       # 