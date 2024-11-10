---
theme: theme.json
author: Author Name
date: MMMM dd, YYYY
paging: Slide %d / %d
---

```bash
~~~just intro Title with Figlet
This will render the presnetation title.
~~~
```

---

```bash
~~~just intro_toilet Alternative Title with Toilet
This will render the presnetation title.
~~~
```

---


## Example Diagram with GraphEasy

```bash
~~~just digraph https-handshake
It will be overriden by command output. The `https-handshake` is the name of digraph diagram to render.
~~~
```

---

## Example Diagram with PlantUML

```bash
~~~just plantuml dns-resolution
It will be overriden by command output. the `dns-resolution` is the name of PlantUML diagram to render.
~~~
```
---

## We can execute code in slides

> Hit `Ctrl + e` to execute  the below code block

```bash
ls -lah --color=always
```
---

### Or run programs

```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

---

# Demo

```bash
~~~just demo Let's Demo Something Cool
Another text box for demo title.
~~~
```
