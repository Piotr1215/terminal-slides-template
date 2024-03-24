#!/usr/bin/env -S just --justfile
# show all the justfile recipes
default:
  @just --list

# run the presentation
present:
  @slides ./slides.md

# show demo ascii
demo:
  #!/usr/bin/env bash
  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
      echo "DEMO TIME" | figlet -f pagga | boxes -d peek
  else
      echo "DEMO TIME"
  fi

# show intro ascii
intro:
  #!/usr/bin/env bash
  title="Upbound powered performance testing CI"

  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
    echo "$title" | figlet -f future | boxes -d peek
  else
    echo "$title"
  fi
