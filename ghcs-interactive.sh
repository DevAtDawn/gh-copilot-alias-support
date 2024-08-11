#!/bin/bash

# Detect the current shell
current_shell=$(ps -p $$ -ocomm=)

# Source the appropriate function file based on the detected shell
case "$current_shell" in
    *fish)
        source gh-copilot.fish
        ghcs_interactive_option  # Execute the function after sourcing in Fish shell
        ;;
    *bash)
        source gh-copilot.bash
        ghcs_interactive_option  # Execute the function in Bash shell
        ;;
    *zsh)
        source gh-copilot.zsh
        ghcs_interactive_option  # Execute the function in Zsh shell
        ;;
    *)
        echo "Unsupported shell: $current_shell"
        exit 1
        ;;
esac



# fish
# function ghcs_interactive_option 
#     functions ghcs | sed "s/ \-t \"\$TARGET\"//" | source
# end

# bash
#  eval "$(declare -f ghcs  | sed 's/ -t "\$TARGET"//')"

#zsh
# function ghcs_interactive_option {
    # functions ghcs | sed 's/ -t "\$TARGET"//' | source /dev/stdin
# }