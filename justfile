link_src := '''
.config/
.tmux.conf
'''

link_all:
  #!/bin/env fish
  set files
  echo "{{link_src}}" | string collect | while read f
    if path is -f $f
      set -a files $f
      continue
    end
    if path is -d $f
      find $f -type f -print | while read --line c
        set -a files $c
      end
    end
  end
  just make_links "$(string join -n "\n" $files)"

make_links files:
  #!/bin/env fish
  echo -e "{{files}}" | string collect | while read --line f
    if ! path is -f $f
      echo "Source files must be regular files. Problem source file: $f"
    end
    set src (path resolve $f)
    set dst (path normalize "$HOME/$f")
    if path is -l $dst
      # TODO: detect link to wrong target
      continue
    end
    if path is -f $dst
      set diff "$(just diff $src $dst)"
      if test ! -z $diff
        echo $diff
        continue
      end
    end
    just link $src $dst
  end

diff $src $dst:
  #!/bin/env fish
  set delta "$(diff -u $src $dst)"
  if test -z "$delta"
    exit
  end
  echo "Diff detected for $src"
  echo $delta

link $src $dst:
  #!/bin/env fish
  set dstdir (path dirname $dst)
  if ! path is -d $dstdir
    install -d $dstdir
  end
  echo $src $dst
  ln -sf -T $src $dst
