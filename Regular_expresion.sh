# #### Here we'll learn regular expressions and use it with linux grep command ####

# ### in this project we use regex.txt file which i have created here and put some example text in there ###

echo "1. Write a pattern that match abcd characters"
  grep  "abcd" regex.txt
  grep -i "abcd" regex.txt # ignore cases

echo "2. Write a pattern that match digit 123"
  grep -e "123" regex.txt

echo  "3. Write a pattern that match with any digit"
  grep -P '\d' regex.txt
