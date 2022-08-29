# #### Here let's get acquainted with some points  ####

#####  Redirecting input and output 
 #  Handle standard output
    echo "Hello World !" > output.txt
    # Note 
      # > , it's redirected echo command output and write that in the output.txt file  
      # if you use the > redirection operator and send to the output to a file that already exist , that file's current data will be deleted 

    # Other example 
    cut -d ":" -f 1 /etc/passwd > users.txt 
       # "cut" read /etc/passwd file and filter usernames then writes result in to the users.txt file