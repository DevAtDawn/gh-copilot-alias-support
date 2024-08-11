function ghcs_interactive_option {
    functions ghcs | sed 's/ -t "\$TARGET"//' | source /dev/stdin
}