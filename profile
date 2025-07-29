# Load login shell dotfiles:
# * ~/.path can be used to extend $PATH.
# * ~/.exports for environment variables.
# * ~/.profile_local can be used for other settings you don't want to commit.
for file in ~/.{path,exports,profile_local}; do
[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Source .bashrc for interactive shell settings
if [ -f ~/.bashrc ]; then
source ~/.bashrc;
fi;
