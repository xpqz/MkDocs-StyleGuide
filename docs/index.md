# Dyalog Documentation Style Guide
When using [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

todo: how to do things in markdown/html

## Document Structure and General Style Guidelines

!!! Info "Information"
    [Style_Guide_and_Best_Practice](http://wiki.dyalog.bramley/index.php/Style_Guide_and_Best_Practice) on the internal wiki covers:

    - The structure to use for documents
    - General rules to follow when writing, including language-related guidelines such as the use of Dyalog-specific terms, how to mention third-party products, and the use of abbreviations and acronyms.

    Please make sure you follow these as well as the styles detailed on this page.

Some aspects have been adapted in this document for use with Material for MkDocs:

- [Headings](#headings)
- [Code](#code)
- [Notes](#notes)

## Headings
Headings are denoted by a number of octothorpes corresponding to the heading level.

```
# Heading 1
## Heading 2
###### Heading 6
```

Headings should be written in [title case](https://en.wikipedia.org/wiki/Title_case#Chicago_Manual_of_Style).

Try to avoid multiple consecutive headings with no intervening text.

## Italics
Use italics when introducing a new term.

Italics are denoted by single asterisks surrounding the text.

<p class="example">example</p>

Markup like

```
The word *asterisks* is italicised.
```

renders as

The word *asterisks* is italicised.

## Bold
Bold text is denoted by double asterisks surrounding text.

Bold text is used for:

- file names
- file paths
- directory and folder names
- file extensions
- UI components (not buttons)

<p class="example">example</p>

```
Go to the **file** menu
```

Go to the **file** menu

## Notes

### Creating a Note
Notes are [admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/).

They are denoted by three exclamation marks followed by the note type and optional title text. On subsequent lines, note content is indented by four spaces.

We use a fixed set of admonition types for consistency. Do not forget to include custom text on notes which use them and do not change the custom text.

<p class="example">example</p>

```
!!! Tip "Hints and Recommendations"
    This is the note content.
```

!!! Tip "Hints and Recommendations"
    This is the note content.

### General Notes for Emphasis

Various icons are used in the documentation to emphasise specific material:

!!! Tip "Hints and Recommendations"
    Hints, tips, best practice and recommendations from Dyalog Ltd

    This note type is "Tip".

    <p class="example">example</p>

    If both DOSLimit and BufferSize are set, then the smaller value applies. Dyalog Ltd recommends using a modest BufferSize and not setting EnableBufferSizeHttp to ensure that abnormally large headers are not processed, then setting an appropriate DOSLimit to accommodate the expected size messages

!!! Info "Information"
    Highlighting material of particular significance or relevance

    <p class="example">example</p>

    The .NET interface only works with the Unicode edition of Dyalog; Classic edition is not supported.

!!! Warning
    Warnings about actions that can impact the behaviour of Dyalog or have unforeseen consequences

    <p class="example">example</p>

    The structure under the SALT directory must not be modified and the five sub-directories must not be renamed.

!!! Legacy
    Legacy information pertaining to behaviour in earlier releases of Dyalog or to functionality that still exists but has been superseded and is no longer recommended

    <p class="example">example</p>

    Although .dyapp files are supported for backwards compatibility, Dyalog Ltd recommends launching the interpreter directly from any APL source or configuration file (functionality introduced with Dyalog version 18.0) rather than through the now-superseded .dyapp file mechanism.

### Operating-system-specific Behaviour

Notes are also used to differentiate between operating-system-specific behaviour in cross-platform documents:

!!! linux "Dyalog on Linux"
    <p class="example">example</p>

    The MyUCMDs directory is located directly under the **$HOME** directory

!!! unix "Dyalog on UNIX"
    <p class="example">example</p>

    By default, the cache file is located in **$HOME/.dyalog/**

!!! macOS "Dyalog on macOS"
    <p class="example">example</p>

    By default, the cache file is located in **Users/<name\>/.dyalog/**

!!! windows "Dyalog on Microsoft Windows"
    <p class="example">example</p>

    By default, the cache file is located in **Documents\\Dyalog APL <version> Files\\**

## Actions and Instructions
Blocks which contain instructions should be surrounded by horizontal rules. The introductory line ("To do...") should be **bold** and should not end with any punctuation.

<span class="example">Example</span>

---

**To do this thing**

1. Do this thing
2. Then do this thing

---

## Examples
Introduce full examples with `<p class="example">Example</p>` (or "examples") so that it is on a line by itself.

Exception – if there are several consecutive examples illustrating different things, they can each be introduced with "Example: <text\>" if that helps to clarify things for the reader.

## Code
Inline code and code blocks render in APL font unless the class "language-other" is used.

We have disabled syntax highlighting.

#### Inline code
Inline, use `<code>[your code here]</code>` or single backticks `` `[your code here]` ``.

<p class="example">Example</p>

The following markup

```html
The average of a vector (<code class="language-apl">+⌿÷≢</code>) is the sum divided by the tally.
```

renders as

The average of a vector (<code class="language-apl">+⌿÷≢</code>) is the sum divided by the tally.

#### Code blocks
Code blocks use `<pre><code class="language-apl"></code></pre>` or triple backticks with "apl" (lowercase) to denote the language. MkDocs will take care of adding the "language-apl" class in this case.

<p class="example">Example</p>

```
<pre><code class="language-apl">      3+⍳10
4 5 6 7 8 9 10 11 12 13
</code></pre>
```

```````
```apl
      3+⍳10
4 5 6 7 8 9 10 11 12 13
```
```````

both render as

```apl
      3+⍳10
4 5 6 7 8 9 10 11 12 13
```

#### Non-APL Code
Use `<code class="language-other">[your code here]</code>`.

<p class="example">Examples</p>

This is an inline example, <code class="language-other">print("hello")</code> is a print statement in Python.

```
<pre><code class="language-other">>>> print("hello")   # Code block example
hello</code></pre>
```

``````
```other
>>> print("hello")   # Code block example
hello
```
``````

both render as

```other
>>> print("hello")   # Code block example
hello
```

### APL Code <span class="language-apl">+⌿÷≢⌹</span> in Titles
Try to avoid using APL code in headings.

If it is essential, use `<span class="language-apl">` to add code to titles. This will be rendered in APL font on the page but not in the navigation menus.

## References
References to other documents should correctly name the document and be italicised. Ideally they should link to the document (todo: consider versioning).

<p class="example">Example</p>

For more information on the Clean function, see the [*SALT User Guide*](https://docs.dyalog.com/latest/SALT%20User%20Guide.pdf).

## Command Codes and Keys
When referring to keyboard shortcuts, such as those controlled by `⎕KL` on Microsoft Windows, put the code in angle brackets.

Closing angle brackets must be escaped with a backslash (e.g. `<keycode\>`).

<p class="example">Example</p>

<TC\> is the command code for trace.

## Keyboard keys
Use the `<kbd>` tag to refer to keys.

<p class="example">Example</p>

Press the <kbd>Enter</kbd> key.

## Figures with Captions
!!! Info "Information"
    There is currently no way to automatically number and cross-reference figures in Material for MkDocs.

<figure>
<img width="300px" src="https://interactive-examples.mdn.mozilla.net/media/cc0-images/elephant-660-480.jpg" />
<figcaption>
An elephant at sunset
</figcaption>
</figure>

## Icons
Use of [icons](https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/) should be recorded here so that this document can be used as a reference and icons can be used consistently.

- Apple keys under `:material-apple-keyboard-*:`
    - Apple key: :material-apple: (`:material-apple:`)
    - Command Key: :material-apple-keyboard-command: (`:material-apple-keyboard-command:`)
    - Option key: :material-apple-keyboard-option: (`:material-apple-keyboard-option:`)
- Windows Key: :fontawesome-brands-windows: (`:fontawesome-brands-windows:`) 
