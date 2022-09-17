# #### Here we learn how manage linux processes and how to use command-line tools to manage the running programs. ####

### When linux system first boots , it starts a special process called the init process. 
### The 'init' process is the core of the linux system; it runs scripts that start all of the other processes running on the system, 

# Viewing Processes 
  ps     # shows only the processes that are running in the current user shell. 
  ps -ef # shows every process running on the system with Unix-style options. 
     # UID  => The User responsible for running the process
     # PID  => The Process ID of the process 
     # PPID => The Process If of the parent process
     # STIME => The system time when the process was started 
     # TTY  => The terminal device from which the process was started
     # TIME => The cumulative CPU time required to run the process
     # CMD  => The name of the program that was started in the process

# ** Some process command names are shown in brackets . That indicates processes that are currently swapped out from physical memory into virtual memory on the hard driver . 
  ps -u jack -U jack # show username processes 


# View Processes With top/htop/btop 
  # All those commands displays process information similar to the ps command in real-time mode . 
    # NOTE:
        # The top command is default command in linux and you don't need install anything,but htop and btop not exist on linux by default you need install them . 
        # The htop and btop give you more inforamtion with better view  
  top # diplays process information in real-time mode
      # Some columns informations 
        # PID -> The process ID 
        # USER -> The username of ther owner of the process 
        # PR -> The priority of the process 
        # NI -> The nice value of the process 
        # VIRT -> The total amount of virtual memory used by the process 
        # RES -> The amount of physical memory the process is using . 
