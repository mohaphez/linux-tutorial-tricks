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
    echo "I add New User Manually" >> users.txt
      # >> append text to end of the file instead of overwrite it 
    echo > users.txt 
      # its delete everything in users.txt file . 

 #  Handle standard Error
    grep -d skip bluhbluh /etc/* 2> error.txt
    # Note 
      # 2> , it'll redirect the error output if exist then  writes that in the error.txt file. 
      # if you use the 2> redirection operator and send to the output to a file that already exist , that file's current data will be deleted 
    
     grep -d skip bluhbluh /etc/* 2>> error.txt
      # 2>> append text to end of the file instead of overwrite it 

 #  Handle both standard out and erro
    grep -d skip password /etc/* &> result.txt
    # Note 
      # &> , it'll redirect the error and standard out and write in the result.txt 

    grep -d skip password /etc/* &>> result.txt
      # &>> append text to end of the file instead of overwrite it 


 #  Regulating Standard Input
    # If we'll have file with content like the line below, how we'll be able replace spaces with "," and show result or save them in other file ?
    #  3 4 65 34 112 445

    tr " " "," < numbers.txt
    # Note 
      # < , redirect STDIN from numbers.txt into tr command  
      # keep in mind that this command didn't change numbers.txt file 

    tr " " "," < numbers.txt > newNumbers.txt
      # write result in the newNumbers.txt file s
