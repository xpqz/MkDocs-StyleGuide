# Styles 2
- [note styles](./index.md#notes)

## todo
- keeptogether  
  for printed version, a block which should be kept on a single page (without a page break)
- Five levels of headings. These are denoted with one to N octothorpes `#`  

    Headings should be written in [title case](https://en.wikipedia.org/wiki/Title_case#Chicago_Manual_of_Style).

    Try to avoid multiple consecutive headings with no intervening text.

```
# Level 1
## Level 2
```


## Actions and instructions
Blocks which contain instructions should be surrounded by horizontal rules. The introductory line ("To do...") should be **bold**.

<span class="example">Example</span>

---

**To do this thing:**

1. Do this thing
2. Then do this things

---

## Examples
Introduce full examples with `<p class="example">Example</p>` (or "examples") so that it is in a line on its own.

Exception – if there are several consecutive examples illustrating different things, they can each be introduced with "Example: `<text>`" if that helps to clarify things for the reader.

<p class="example">EXAMPLE</p>
Standalone examples in this document follow this style.

## Code

### APL Code
**TODO:** how to disable syntax coloring/highlighting

Inline, use `<code class="language-apl">[your code here]</code>`

For example, the average of a vector (<code class="language-apl">+⌿÷≢</code>) is the sum divided by the tally.

Code blocks may use triple backticks with "APL" to denote the language. MkDocs will take care of adding the "language-apl" class in this case.

<p class="example">Example</p>

```apl
      3+⍳10
4 5 6 7 8 9 10 11 12 13      
```

<pre><code class="language-apl">      3+⍳10
4 5 6 7 8 9 10 11 12 13
</code></pre>

### Non-APL Code
Either use single backticks (`some code`) (TODO: how to escape backticks) or `<code class="nonAPL">some code</code>`.

Code blocks may use triple backticks with "\[language\]" to denote the language. MkDocs will take care of adding the "language-\[language\]" class in this case.

<p class="example">Examples</p>

This is an inline example, <code class="language-python">print("hello")</code> is a print statement in Python.

```Python
>>> print("hello")   # Code block example
hello
```

```
No language specified
```

### APL Code <span class="language-apl">+⌿÷≢⌹</span> in Titles

## Style Guide

### Italics
Use italics when introducing a new term.

### Bold
- file names, file paths and directories folders and file extensions
- UI components (not buttons)
  e.g. go to the **file** menu

### References
References to other documents should correctly name the document and be italicised.

<p class="example">Example</p>

For more information on the Clean function, see the [*SALT User Guide*](https://docs.dyalog.com/latest/SALT%20User%20Guide.pdf).

## Command Codes and Keys
When referring to keyboard shortcuts, such as those controlled by `⎕KL` on Microsoft Windows, put the code in angle brackets.

Closing angle brackets must be escaped with a backslash.

<p class="example">Example</p>

<TC\> is the command code for trace.

## Keyboard keys
Use the `<kbd>` tag to refer to keys.

<p class="example">Example</p>

Press the <kbd>Enter</kbd> key.

## Figures with Captions
<figure>
<img src="https://interactive-examples.mdn.mozilla.net/media/cc0-images/elephant-660-480.jpg" />
<figcaption>
An elephant at sunset
</figcaption>
</figure>

## Icons
- Apple keys under `:material-apple-keyboard`
    - Command Key: :material-apple-keyboard-command: (`:material-apple-keyboard-command:`)
    - Option key: :material-apple-keyboard-option: (`:material-apple-keyboard-option:`)
- Apple key: :material-apple: (`:material-apple:`)
- Windows Key: :fontawesome-brands-windows: (`:fontawesome-brands-windows:`) 