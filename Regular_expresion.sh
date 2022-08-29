# #### Here we'll learn regular expressions and use it with linux grep command ####

# ### in this project we use regex.txt file which i have created here and put some example text in there ###

echo "1. Write a pattern that match abcd characters"
  grep  "abcd" regex.txt
  grep -i "abcd" regex.txt # ignore cases

echo "----------------------------------------------------------------------------"

echo "2. Write a pattern that match digit 123"
  grep -e "123" regex.txt

echo "----------------------------------------------------------------------------"

echo  "3. Write a pattern that match with any digit"
  grep -P '\d' regex.txt
  echo "-------------------"
  grep [[:digit:]] regex.txt

echo "----------------------------------------------------------------------------"

echo "4. Write a pattern that match with none-digit character"
  grep -P '\D' regex.txt
  echo "----------------"
  grep [[:alpha:]] regex.txt

echo "----------------------------------------------------------------------------"

echo "5. Write a pattern that match with words have Dot(.) "
  grep -P ".*\." regex.txt 
  # Note
    # .* that means any character could be come before Dot(.) 
    # \. that means after any type of character in word have Dot(.) character 

echo "----------------------------------------------------------------------------"

echo "6. Write a pattern that match with words which have e|a|u in second character "
  grep -P '^.[eau].*' regex.txt
  # Note
    # ^. means the first character of start line position could be any character
    # [eau] means the second character of word must be one of the chars inside []
    # .* means after second character, word could be have any character    

echo "----------------------------------------------------------------------------"

echo "7. Write a pattern that match with words which have not e|a|u in second character "
  grep -P '^.[^eau].*' regex.txt
  # Note
    # ^. means the first character of start line position could be any character
    # [^eau] means the second character of word must not be one of the chars inside []  
    # .* means after second character, word could be have any character   

echo "----------------------------------------------------------------------------"

echo "8. Write a pattern that match with words which start with small letters (a-z) "
  grep -P '^[a-z].*' regex.txt
  # Note
    # ^[a-z] means the first character must be start with small letter character 
    # .* means after first character, word could be have any character    

echo "----------------------------------------------------------------------------"

echo "9. Write a pattern that match with words which start with capital letters (A-Z) "
  grep -P '^[A-Z].*' regex.txt
  # Note
    # ^[A-Z] means the first character must be start with capital letter character 
    # .* means after first character, word could be have any character    

echo "----------------------------------------------------------------------------"

echo "10. Write a pattern that match with words which start with any Alphanumeric character "
  grep -P '^\w.*' regex.txt
  # Note
    # ^\w means the first character must be start with any Alphanumeric character
    # .* means after first character, word could be have any character 

echo "----------------------------------------------------------------------------"

echo "11. Write a pattern that match with words which start with any none-alphanumeric character "
  grep -P '^\W.*' regex.txt
  # Note
    # ^\W means the first character must be start with any none-alphanumeric character
    # .* means after first character, word could be have any character 

echo "----------------------------------------------------------------------------"

echo "12. Write a pattern that match with words which have 3 or more l character "
  grep -P '.*l{3}.' regex.txt
  # Note
    # .* that means any character could be come before l 
    # l{3} means word must be have 3 l character at least

echo "----------------------------------------------------------------------------"

echo "13. Write a pattern that match with words which that have 3 or more l,o character"
  grep -P '.*[ol]{3}.' regex.txt
  # Note
    # .* that means any character could be come before l 
    # [ol]{3} means word must be have 3 'l or o' character at least

echo "----------------------------------------------------------------------------"

echo "13. Write a pattern that match with words which that have between 2 and 3 of l character"
  grep -P '.*l{2,3}.' regex.txt
  # Note
    # .* that means any character could be come before l 
    # l{2,3} means word must be have between 2 and 3 of l character at least

echo "----------------------------------------------------------------------------"

echo "14. Write a pattern that match with words which that have 1 or more 'a' character"
  grep -P '.a+' regex.txt
  # Note
    # .a+ that means word must be have 1 "a" character at least

echo "----------------------------------------------------------------------------"

echo "15. Write a pattern that match with the sentences start with digit and after that 'files' word come optionally  then 'found' word come and question mark is end of the sentence."
  grep -P '\d+ files? found\?' regex.txt
  # Note
    # \d+ that means the sentence must be start with 1 digit at least
    # files?  that means after digits the 'files' word could be come.(optionaly)
    # \?   escape question mark.

echo "----------------------------------------------------------------------------"

echo "16. Write a pattern that match with words which start with 1 or more space"
  grep -P '^\s+.*' regex.txt
  # Note
    # ^\s+ that means the sentence must be start with 1 or more space

echo "----------------------------------------------------------------------------"

echo "17. Write a pattern that match with the sentences which start with 'linux' and end with 'regex' word"
  grep -P '^linux.*regex$' regex.txt
  # Note
    # ^linux+ that means the sentence must be start with linux
    # .* that means afte linux any character could be come 
    # regex$ that means the sentence must be ended with regex

echo "----------------------------------------------------------------------------"

echo "18. Write a pattern that return just filenames which have .pdf extension"
  grep -Po '(file.+)(?=\.pdf$)' regex.txt
  # Note
    # o option for show only nonempty parts of lines that match
    # (file.+) that means select the sentence start with "file"
    # (?=\.pdf$) that means the sentence must be ended with .pdf though not print in result

echo "----------------------------------------------------------------------------"

echo "19. Write a pattern that find screen resolution (1280x720) string"
  grep -Po '(\d+)\s?x\s?(\d+)' regex.txt
  # Note
    # (\d+) select group of digit 
    # \s? a space could be come optionally

echo "----------------------------------------------------------------------------"

echo "20. Write a pattern that find the sentences which have like , hate , love word"
  grep -Po '.*?(hate|like|love).*' regex.txt
  # Note
    # (hate|like|love) one of this words must be come in the sentences

echo "----------------------------------------------------------------------------"

