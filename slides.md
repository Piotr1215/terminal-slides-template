---
theme: theme.json
author: Change Author
date: MMMM dd, YYYY
paging: Slide %d / %d
---

```bash
~~~just intro
This is presentation title, change it in justfile
~~~
```

---

## Example Diagram with GraphEasy

```bash
~~~just digraph plugins
There must be empty line between the ~~~. It will be overriden by command
output. The `plugins` is the name of digraph diagram to render.
~~~
```

---

## Example Diagram with PlantUML

```bash
~~~just plantuml components
There must be empty line between the ~~~. It will be overriden by command
output. the `components` is the name of plantuml diagram to render.
~~~
```

---

# Demo

```bash
~~~just demo
Adjust demo_text variable in justfile to change this text.
~~~
```
