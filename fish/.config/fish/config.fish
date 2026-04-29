if status is-interactive
    # Commands to run in interactive sessions can go here
    # fastfetch
end

if test "$TERM" = "xterm-kitty"
    alias ssh="kitty +kitten ssh"
end
