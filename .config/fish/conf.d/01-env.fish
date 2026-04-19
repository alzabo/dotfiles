set -a p ~/bin
set -a p ~/zig-linux-x86_64-0.12.0
set -a p /usr/local/go/bin
set -a p ~/go/bin
set -a p ~/.cargo/bin
set -a p ~/.local/bin
# set -a p ~/zig-linux-x86_64-0.13.0-dev.75+5c9eb4081

for path in $p
  if contains $path $PATH
    continue
  end
  if test -e $path
    set -ag PATH $path
  end
end

if command -q nvim
  set -gx EDITOR nvim
else
  set -gx EDITOR vim
end
