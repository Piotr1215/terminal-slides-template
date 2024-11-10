#!/usr/bin/env -S just --justfile

# confgiuration
replace                          := if os() == "linux" { "sed -i"} else { "sed -i '' -e" }
diagrams                         := justfile_directory() + "/diagrams"

# show all the justfile recipes
default:
  @just --list

# change presentation author in the slides
change_author author:
  #!/usr/bin/env bash
  {{replace}} '/^author: /s/:.*/: {{author}}/' slides.md

# run the presentation
present author: (change_author author)
  @slides ./slides.md

# list all the figlet fonts
list_figlet_fonts:
  #!/usr/bin/env bash
  if command -v figlet &>/dev/null; then
    showfigfonts
  else
    echo "figlet not installed"
  fi

# list all the toilet fonts
list_toilet_formats_filters:
  #!/usr/bin/env bash
  if command -v toilet &>/dev/null; then
    toilet -F list
    echo ""
    toilet -E list
  else
    echo "toilet not installed"
  fi

# list all the boxes
list_boxes:
  #!/usr/bin/env bash
  if command -v boxes &>/dev/null; then
    boxes -l
  else
    echo "boxes not installed"
  fi

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

# show freetext
freetext *free_text:
  #!/usr/bin/env bash
  export title="{{free_text}}"
  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
      echo "$title" | figlet -f pagga -w 200 | boxes -d peek
  else
      echo "$title"
  fi

# show ending ascii
demo *demo_title:
  #!/usr/bin/env bash
  export title="{{demo_title}}"
  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
      echo "$title" | figlet -f pagga -w 200 | boxes -d peek
  else
      echo "$title"
  fi

# show intro ascii using figlet
intro *pres_title:
  #!/usr/bin/env bash
  export title="{{pres_title}}"

  if command -v figlet &>/dev/null && command -v boxes &>/dev/null; then
    echo "$title" | figlet -f future -w 200 | boxes -d peek
  else
    echo "$title"
  fi

# show intro ascii using toilet
intro_toilet *pres_title:
  #!/usr/bin/env bash
  export title="{{pres_title}}"
  if command -v toilet &>/dev/null && command -v boxes &>/dev/null; then
    echo "$title" | toilet -f mono9 -w 250 --filter border
  else
    echo "$title"
  fi
