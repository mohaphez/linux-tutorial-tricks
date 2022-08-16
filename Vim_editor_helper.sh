# Here we have some useful note for How to use vim editor fluently.

################ How Show line number in file  ################
# type :set number
############################################################

################ How to move in vim editor ################

# KEY h move cursor left one character 
#     l move cursor right one character
#     j move cursor down one line 
#     k move cursor up  one line 
#     w move cursor to next word
#     e move cursor to end of word 
#     b move cursor to backward one word
#     0 move cursor to beginning of line 
#     $ move cursor to enf of line 
#     gg move cursor to file first line
#     G move cursor to file last line 
#     :number move cursor to (number) line 
#         example -> :46 -> cursor move to line 46
############################################################

############### How Edit the files with commands ############

# KEY  a insert text after cursor 
#      A insert text at end of text line.
#      dw delete one word
#      dd delete one line 
#      d<number>d  delete <number> of text line . 
#            example -> d4d -> delete 4 line 
#      i insert text before cursor
#      I insert text before beginning of line 
#      o open a new line blow cursor 
#      O open a new line above cursor
#      p paste copied text after cursor
#      P paste copied text before cursor
#      yw copy current word 
#      yy copy current line 
#      r  replace character 
#      R  replace multiple character
#      x  remove character. 

############################################################

############### How excute command Or read external file ############

# :! <command> excute bash command inside Edito . 
#     example-> :! ls 
# :r! <command> excute bash command inside editor and include results in buffer area
# :r File  include the file contents to the editor buffer area
#      example-> :r test.txt 
#  
############################################################

############### How use visual mode  ############
# press key v 
# move between lines with the arrows . Meanwhile the lines will be selected. 
# then select your command, for example if you press yy all lines will be yank
# or you write :w copy.txt , all selected lines will be write in copy.txt file 
############################################################

############### Exit mode in vim   ############
# :x  save and exit from editor  
# :wq save and exit from editor
# :w  just save file and stay in editor
# :q! exit from edtor without save changes .
# ZZ  save and exit from editor . 
############################################################

############### How Serach word    ####################
# press slash(/) key 
# type what you want 
# press Enter 
# KEY n go to next serach result 
# KEY N go to previous serach result
############################################################

############### How Replace word    ####################

# only finds the word in current line
#   in command Mode Type :s/oldword/neword
#       exmaple-> :s/three/two -> only changed first matched of "three" in current Line

# finds the word in whole file
#   in command Mode Type :%s/oldword/neword
#       exmaple-> :%s/three/two -> only changed the first match of "three" in whole file

# finds every occurrence in whole file
#   in command Mode Type :%s/oldword/neword/g -> 
#       exmaple-> :%s/three/two/g -> changes every word match with "three" in whole file

# finds every occurrence on lines between two number 
#    in command Mode Type :<number>,<number>s/oldword/neword/g
#         exmaple-> :3,5s/three/two/g -> changes every word match with "three" in lines between 3,5 

# finds and replace every occurrence in whole file with confirmation
#   in command Mode Type :%s/oldword/neword/gc -> 
#       exmaple-> :%s/three/two/gc -> changes every word match with "three" in whole file with confirmation

############################################################

############### FIND MATCHING  ),], or }    ####################
# Place the cursor on any (, [, or { 
# type the % character 
# The cursor will move to the matching parenthesis or bracket
############################################################