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

 #  Piping data between Program
    # With the pip (vertical line in keyboard) , we can redirect STDOUT,STDIN and STDERR between multiple command all on the one command line . 
    grep /sbin/nologin$ /etc/passwd | cut -d ":" -f 1 | sort 
      # The grep filters out line ending with  "/sbin/nologin"  in /etc/passwd file.
      # grep results redirect to cut command as a argument with pipeline (vertical line)
      # The cut command split results with ":"  and pick up the first fields (column) then redirect all of them to the sort command as argument
      # The sort command receives everything that comes from the cut command and sorts them and prints for you

# create commands with $() method . 
   rm -i $(ls file-*.txt)
      # The ls command is used to list any files that have the name file-*.txt and the filenames are passed to the rm -i command . which inquires as whether or not delete each found file . This method allows you to get very creative when building commands on the fly