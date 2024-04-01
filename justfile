#!/usr/bin/env -S just --justfile

# Variables will be overriden by the prepare recipe
presentation_title               := "Change Title"
demo_title                       := "Let's talk"
author                           := "Change Author"
replace                          := if os() == "linux" { "sed -i"} else { "sed -i '' -e" }
diagrams                         := justfile_directory() + "/diagrams"


# show all the justfile recipes
default:
  @just --list

# change presentation author
author:
  #!/usr/bin/env bash
  {{replace}} '/^author: /s/:.*/: {{author}}/' slides.md

# run graphasy diagram
plantuml diagram:
  #!/usr/bin/env bash  
  export diagram="{{diagram}}"
  if command -v plantuml &>/dev/null; then
          java -jar /usr/local/bin/plantuml.jar {{diagrams}}/"$diagram".puml -utxt
          mv {{diagrams}}/"$diagram".utxt /tmp/"$diagram".utxt
          cat /tmp/"$diagram".utxt
  else
          echo " "
  fi

# run graphasy diagram
digraph diagram:
  #!/usr/bin/env bash  
  export diagram="{{diagram}}"
  if command -v graph-easy &>/dev/null; then
          graph-easy {{diagrams}}/"$diagram".dot --as=boxart > {{diagrams}}/"$diagram".txt
          cat {{diagrams}}/"$diagram".txt
  else
          echo " "
  fi


# run the presentation
present: author
  @slides ./slides.md

# show ending ascii
demo:
  #!/usr/bin/env bash
  export title="{{demo_title}}"
  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
      echo "$title" | figlet -f pagga | boxes -d peek
  else
      echo "$title"
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
