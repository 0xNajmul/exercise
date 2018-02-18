# Hiding Passwords and Secret Keys in Environment Variables
# Creating Environment Variable : https://github.com/najmul-amin/exercise/blob/master/commands/path_windows.txt

import os

username = os.environ.get('USERNAME')
password = os.environ.get('PASSWORD')

print(username)
print(password)
