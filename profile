# Load login shell dotfiles:
# * ~/.path can be used to extend $PATH.
# * ~/.exports for environment variables.
# * ~/.profile_local can be used for other settings you don't want to commit.
for file in ~/.{path,exports,profile_local}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set up SSH agent forwarding if npiperelay.exe is available
if command -v npiperelay.exe >/dev/null 2>&1; then
    export SSH_AUTH_SOCK=${HOME}/.ssh/agent.sock
    ss -a | grep -q $SSH_AUTH_SOCK
    if [ $? -ne 0   ]; then
        rm -f ${SSH_AUTH_SOCK}
        ( setsid socat UNIX-LISTEN:${SSH_AUTH_SOCK},fork EXEC:"npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork & ) >/dev/null 2>&1
    fi
fi

# Source .bashrc for interactive shell settings
if [ -f ~/.bashrc ]; then
	source ~/.bashrc;
fi;
