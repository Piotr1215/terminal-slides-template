#!/usr/bin/env -S just --justfile

# Variables will be overriden by the prepare recipe
presentation_title               := "Change Title"
author                           := "Change Author"
replace                          := if os() == "linux" { "sed -i"} else { "sed -i '' -e" }

# show all the justfile recipes
default:
  @just --list

# change presentation author
author:
  #!/usr/bin/env bash
  {{replace}} '/^author: /s/:.*/: {{author}}/' slides.md

# run the presentation
present: author
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
  export title="{{presentation_title}}"

  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
    echo "$title" | figlet -f future | boxes -d peek
  else
    echo "$title"
  fi
