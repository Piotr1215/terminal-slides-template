---
theme: theme.json
author: Change Author
date: MMMM dd, YYYY
paging: Slide %d / %d
---

```
~~~just intro
This is presentation title, change it in justfile
~~~
```

---

## Example Diagram with GraphEasy

```
~~~just digraph plugins
There must be empty line between the ~~~. It will be overriden by command
output. The `plugins` is the name of digraph diagram to render.
~~~
```

---

## Example Diagram with PlantUML

```
~~~just plantuml components
There must be empty line between the ~~~. It will be overriden by command
output. the `components` is the name of plantuml diagram to render.
~~~
```

---

# Demo

```
~~~just demo
Call to Demo will be displayed
~~~
```
