set addpaths \
  ~/bin \
  # ~/zig-linux-x86_64-0.13.0-dev.75+5c9eb4081 \
  ~/zig-linux-x86_64-0.12.0 \
  /usr/local/go/bin \
  ~/go/bin \
  ~/.cargo/bin

for p in $addpaths
  if contains $p $PATH
    continue
  end
  if test -e $p
    set -ag PATH $p
  end
end

if command nvim
  set -gx EDITOR nvim
else
  set -gx EDITOR vim
end
