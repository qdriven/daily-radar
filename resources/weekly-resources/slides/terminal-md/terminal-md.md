---
theme: ./theme.json
author: Patrick
date: January 2, 2021
paging: Slide %d / %d
---

# Terminal Markdown Demo

A Demo to Create Presentation in Terminal.
Code is Here:
https://github.com/maaslalani/slides.git

---

## Everything is Markdown

- Write Markdown File
- And that't it

---

## Everything in Terminal

Presentation in Terminal

---

## Even Run code in Presentation

```go
package main
import "fmt"

func main(){
    fmt.Println("Execute code in Presentation")
}
```

Run it By `<C-e>`

---

## Keys

- q
- left/right
- G: go to last number
- p/h/k/
- vim: n/j/l

## Code blocks

Slides allows you to execute code blocks directly inside your slides!

Just press `ctrl+e` and the result of the code block will be displayed as virtual text in your slides.

Currently supported languages:

* `bash`
* `elixir`
* `go`
* `javascript`
* `python`
* `ruby`
* `perl`
* `rust`

---

### Bash

```bash
ls
```

---

### Elixir

```elixir
IO.puts "Hello, world!"
```

---

### Go

```go
package main

import "fmt"

func main() {
  fmt.Println("Hello, world!")
}
```

---

### Javascript

```javascript
console.log("Hello, world!")
```

---

### Lua

```lua
print("Hello, World!")
```

---

### Python

```python
print("Hello, world!")
```

---

### Ruby

```ruby
puts "Hello, world!"
```

---

### Perl

```perl
print ("hello, world");
```

---

### Rust

```rust
fn main() {
    println!("Hello, world!");
}
```


## Slides Block Arts

You can add a code block with three tildes (~) and write a command to run before displaying
the slides, the text inside the code block will be passed as stdin to the command
and the code block will be replaced with the stdout of the command.

```
~~~graph-easy --as=boxart
[ A ] - to -> [ B ]
~~~
```

The above will be pre-processed to look like:

NOTE: You need `graph-easy` installed and in your `$PATH`

```
┌───┐  to   ┌───┐
│ A │ ────> │ B │
└───┘       └───┘
```

For security reasons, you must pass a file that has execution permissions
for the slides to be pre-processed.

```
chmod +x file.md
```

---

~~~sd replaced processed
This content will be passed in as stdin and will be replaced.
~~~

---

Any command will work

~~~echo "You can do whatever, really"
This doesn't matter, since it will be replaced by the stdout
of the command above because the command will disregard stdin.
~~~

---

You can use this to import snippets of code from other files:

~~~xargs cat
examples/import.md
~~~
