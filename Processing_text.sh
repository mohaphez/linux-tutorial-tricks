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

# head command displays the first 10 lines of text file . 
    #Example ->
        head file.txt
        haed -2 file.txt # display the first 2 lines of text file . 
       
# tail command displays the last 10 lines of text file . 
    #Example ->
        tail file.txt
        tail -n 20 file.txt # display the last 20 lines of text file .
        tail -n +43 file.txt # shows text lines from line number 43 of text file.
        tail -f file.txt # follows file changes , if new log writes to end of file tail will be show in live mode 
    #NOTE ->
        # to watch messages beging added to the journal file , use the journalctl --follow command . 
        journalctl --follow

# wc command display the file's number of lines , words , bytes in that order  
    #Example ->
        wc file.txt
        wc -l file.txt # display the file's number of lines
        wc -m file.txt # display the file's number of chars
        wc -w file.txt # display the file's number of words

# cut command helps to quickly extract small data sections from large text file. 
    #Example ->
        cut -d ":" -f 1,7 file.txt # filterss text file then show records have ":" delimiter and are part of field 1,7 
    #NOTES 
        # -f display only the record's fields denoted by flist 
        # -d designate the record's field delimiter as d . 

# uniq command will find repeated text lines only they come right after one another.
    #Example ->
        uniq file.txt  


# grep command one of the wonderful tool for sifting text 
    #Example ->
        grep "hello" file.txt # find lines have that hello word 
        grep -c "hello" file.txt # display a count of text file records that contain a pattern match 
        grep -i "hello" file.txt # ignore the case in the pattern as well as in text file.
        grep -r "hello" /home/*  # search directory's contents and for any subdirectory.
        grep -v "hello" /home/*  # display only files records that do not contain a pattern match 
        grep -rnw . -e "regex.*"  # search all current directory and subdirectory files and will be find lines have contain a pattern (regex) match  
        grep -f accounts.txt /etc/passwd #  take PATTERNS from accounts.txt
        grep -v ^$ file.txt # display only lines with text (filter out the blank lines) 
        grep -e "^root|^dbus" /etc/passwd # with ERE search the /etc/passwd file and find which lines start with root or dbus
    # NOTE 
        # grep support special group of bracket expression are character classes. 
            #Example ->
                grep [[:alnum:]] file.txt # matches any alphanumeric characters
                grep [[:alpha:]] file.txt # matches any alphabetic characters
                grep [[:digit:]] file.txt # matches any numeric characters
                grep [[:punct:]] file.txt # matches punctuation characters (!,#,$,@)
