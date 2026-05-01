if status is-interactive
    # Commands to run in interactive sessions can go here
    # fastfetch
end

if test "$TERM" = "xterm-kitty"
    alias ssh="kitty +kitten ssh"
end

fish_add_path /home/kin/.spicetify /home/kin/git-repos/yazi/target/release

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
