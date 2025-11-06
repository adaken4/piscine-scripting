#!/bin/bash

# Instructions

# In this exercise you will make a script input-redirection.sh. This script
# will read from an here document (heredoc). Usually this technique is used
# to programmatically generate scripts or configuration files receiving some
# multiline input.

# The script will create a file show-info.sh that will run the command cat
# with -e as argument. The input to cat will be passed using heredoc. Running
# show-info.sh will output some useful information about three common
# environment variables.

# The environment variables are PWD, PATH and USERNAME.

# Usage:
# First generate the script programmatically:

# $ ./input-redirection.sh
# $
# Then run the generated script:
# 
# $ bash ./show-info.sh
# The current directory is: current/path/example$
# The default paths are: /first_path:/second_path:/third_path$
# The current user is: your_name$
# $

touch show-info.sh
chmod +x show-info.sh

cat > show-info.sh <<'EOF'
#!/bin/bash
cat -e <<EOL
The current directory is: $PWD
The default paths are: $PATH
The current user is: $USERNAME
EOL
EOF
