# #### Here we`ll learn how process and filter texts  ####

# cat is for display files content on your screen .
  # Example ->
    cat file.txt
    cat -s file.txt # do not display repeated blank empty text file lines.
    cat -v file.txt # display nonprinting charachters.
    cat -T file.txt # display a ^I when a tab character is encounter
    cat -n file.txt # number all text file lines and display that number in the output

# paste command to join together files side-by-side 
    #Example -> 
        paste file1.txt file2.txt

# od command to show file text content in octal
    #Example ->
        od file.txt

# split command to divide up file using size,bytes,lines. useful for split large log files
    #Example ->
        split -l 5 file.txt  splitedfile      

# sort command to sort file content without no change in origin file  
    #Example ->
        sort aplpha.txt
        sort -n aplpha.txt # sort number content . 
        sort aplpha.txt -o newfile.txt # sort content and save result in newfile.txt

# sort command to sort file content without no change in origin file  
    #Example ->
        sort aplpha.txt
        sort -n aplpha.txt # sort number content . 
        sort aplpha.txt -o newfile.txt # sort content and save result in newfile.txt

# nl command for show file content with line number 
    #Example ->
        nl file.txt     # add numbers to non-blank lines.
        nl -ba file.txt # adds number to all text file lines 

# more command is a utility for read through a large text file is by using a pager 
    #Example ->
        more file.txt
    #Note ->
        # Move forward (one page down) text file by pressing the spacebar 
        # Move forward (one line) text file by pressing the enter 
        # You can't move backward through a file . 
        # To exit from the more pager . press q key

# less command is a utility for read through a large text file is by using a pager 
    #Example ->
        less file.txt
    #Note ->
        # Move forward (one page down) text file by pressing the spacebar 
        # Move backward (one page up) text file by pressing the ESC+v 
        # Move forward (one line) text file by pressing the down arrow
        # Move forward (one line) text file by pressing the up arrow   
        # Search backward entire file by pressing the ? key
        # Search forward entire file by pressing the / key
        # To exit from the more pager . press q key