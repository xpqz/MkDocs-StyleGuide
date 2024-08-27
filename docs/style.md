# Style Guide
When using [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

- todo:
    - apply background to rendered examples
    - references in HTML vs. PDF
    - consider linking to specific document versions in references to other documents
    - what is happening with [figures with captions](#figures-with-captions) (and tables)
    - section on tables
    - introduce markdown and HTML?

## Markdown and HTML
For more example of markdown and equivalent HTML, see the [basic syntax page on markdownguide.org](https://www.markdownguide.org/basic-syntax/_).

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
Use italics when:

- introducing a new term
- naming a function or operator
- an algebraic term is being used instead of the number, then it should be italicised to distinguish it from the postscript, for example, "the ith term" or "the nth time".

Italics are denoted by single asterisks surrounding the text.

<p class="example">example</p>

```
The word *asterisks* is italicised.
```

<div class="example-result">
The word *asterisks* is italicised.
</div>>

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

<div class="example-result">
Go to the **file** menu
</div>>

## Hyperlinks
Used to create links to other parts of the same document, [other documents](#references) or external sources.

Link text is surrounded by square brackets and the link URL is in round parentheses.

<p class="example">Example: link text is URL</p>

```
Link can be downloaded from [https://github.com/Dyalog/link](https://github.com/Dyalog/link)
```

<div class="example-output" markdown="1">
Link can be downloaded from [https://github.com/Dyalog/link](https://github.com/Dyalog/link)
</div>>

<p class="example">Example: alternative link text</p>

```
Download [Link](https://github.com/Dyalog/link) and...
```

<div class="example-output" markdown="1">
Download [Link](https://github.com/Dyalog/link) and...
</div>>

## Markdown inside HTML
Sometimes it might be useful to use markdown inside HTML tags. For example, when including links inside a table.

Set `markdown="1"` inside the opening tag.

<p class="example">Example</p>

```
<p class="myClass" markdown="1">
Markdown renders in here. For example, *italicised text*.
</p>
```

<div class="example-output" markdown="1">
<p class="myclass" markdown="1">
Markdown renders in here. For example, *italicised text*.
</p>
</div>>

## Notes

### Creating a Note
Notes are implemented as MkDocs [admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/).

They are denoted by three exclamation marks followed by the note type and title text. On subsequent lines, note content is indented by four spaces.

We use a fixed set of admonition types for consistency.

**Do not forget** to include the title text. The title text must be as shown below.

### Note types

#### General Notes for Emphasis
Notes are used to highlight important information.

- Hints and Recommendations
    
    Hints, tips, best practice and recommendations from Dyalog Ltd

    <p class="example">example</p>

    ```
    !!! Tip "Hints and Recommendations"
        If both DOSLimit and BufferSize are set, then the smaller value applies. Dyalog Ltd recommends using a modest BufferSize and not setting EnableBufferSizeHttp to ensure that abnormally large headers are not processed, then setting an appropriate DOSLimit to accommodate the expected size messages.
    ```

    <div class="example-result" markdown="1">

    !!! Tip "Hints and Recommendations"
        If both DOSLimit and BufferSize are set, then the smaller value applies. Dyalog Ltd recommends using a modest BufferSize and not setting EnableBufferSizeHttp to ensure that abnormally large headers are not processed, then setting an appropriate DOSLimit to accommodate the expected size messages.
    
    </div>>

- Information

    Highlighting material of particular significance or relevance

    <p class="example">example</p>

    ```
    !!! Info "Information"
        The .NET interface only works with the Unicode edition of Dyalog; Classic edition is not supported.
    ```

    <div class="example-result" markdown="1">

    !!! Info "Information"
        The .NET interface only works with the Unicode edition of Dyalog; Classic edition is not supported.
    
    </div>>

- Warning

    Warnings about actions that can impact the behaviour of Dyalog or have unforeseen consequences

    <p class="example">example</p>

    ```
    !!! Warning "Warning"
        The structure under the SALT directory must not be modified and the five sub-directories must not be renamed.
    ```

    <div class="example-result" markdown="1">

    !!! Warning "Warning"
        The structure under the SALT directory must not be modified and the five sub-directories must not be renamed.
    
    </div>>

- Legacy

    Legacy information pertaining to behaviour in earlier releases of Dyalog or to functionality that still exists but has been superseded and is no longer recommended

    <p class="example">example</p>

    ```
    !!! Legacy "Legacy"
        Although .dyapp files are supported for backwards compatibility, Dyalog Ltd recommends launching the interpreter directly from any APL source or configuration file (functionality introduced with Dyalog version 18.0) rather than through the now-superseded .dyapp file mechanism.
    ```

    <div class="example-result" markdown="1">

    !!! Legacy "Legacy"
        Although .dyapp files are supported for backwards compatibility, Dyalog Ltd recommends launching the interpreter directly from any APL source or configuration file (functionality introduced with Dyalog version 18.0) rather than through the now-superseded .dyapp file mechanism.
    
    </div>>

#### Operating-system-specific Behaviour
Notes are also used to differentiate between operating-system-specific behaviour in cross-platform documents:

- Dyalog on Linux

    Behaviour specific to Dyalog on Linux

    <p class="example">example</p>

    ```
    !!! linux "Dyalog on Linux"
        The MyUCMDs directory is located directly under the **$HOME** directory
    ```

    <div class="example-result" markdown="1">

    !!! linux "Dyalog on Linux"
        The MyUCMDs directory is located directly under the **$HOME** directory
    
    </div>>

- Dyalog on UNIX

    Behaviour specific to Dyalog on UNIX

    <p class="example">example</p>

    ```
    !!! unix "Dyalog on UNIX"
        By default, the cache file is located in **$HOME/.dyalog/**
    ```

    <div class="example-result" markdown="1">

    !!! unix "Dyalog on UNIX"
        By default, the cache file is located in **$HOME/.dyalog/**
    
    </div>>

- Dyalog on macOS

    Behaviour specific to Dyalog on macOS

    <p class="example">example</p>

    ```
    !!! macOS "Dyalog on macOS"
        By default, the cache file is located in **Users/<name\>/.dyalog/**
    ```

    <div class="example-result" markdown="1">

    !!! macOS "Dyalog on macOS"
        By default, the cache file is located in **Users/<name\>/.dyalog/**
    
    </div>>

- Dyalog on Microsoft Windows

    Behaviour specific to Dyalog on Microsoft Windows

    <p class="example">example</p>

    ```
    !!! windows "Dyalog on Microsoft Windows"
        By default, the cache file is located in **Documents\\Dyalog APL <version> Files\\**
    ```

    <div class="example-result" markdown="1">

    !!! windows "Dyalog on Microsoft Windows"
        By default, the cache file is located in **Documents\\Dyalog APL <version> Files\\**
    
    </div>>

## Actions and Instructions
Instructions are used when there is a logical sequence of steps to do something.

Instructions are written as an ordered list. Blocks that contain instructions should be surrounded by horizontal rules. The introductory line ("To do...") should be **bold** and should not end with any punctuation.

<span class="example">Example</span>

```
---

**To do this thing**

1. Do this thing
2. Then do this thing

---
```

<div class="example-output" markdown="1">

---

**To do this thing**

1. Do this thing
2. Then do this thing

---

</div>>

## Examples
Examples are used to demonstrate the functionality discussed.

Introduce full examples with `<p class="example">Example</p>` (or "Examples") so that it is on a line by itself.

Exception – if there are several consecutive examples illustrating different things, they can each be introduced with "Example: <text\>" if that helps to clarify things for the reader.

<p class="example">example</p>

```
<p class="example">example</p>
This is an example
```

<div class="example-output" markdown="1">

<p class="example">example</p>
This is an example

</div>>

## Code
Inline code and code blocks render in APL font unless the class "language-other" is used.

Syntax highlighting is not enabled.

#### Inline code
Inline, use `<code>[your code here]</code>` or single backticks `` `[your code here]` ``.

<p class="example">Example: APL code</p>

```html
The average of a vector (<code class="language-apl">+⌿÷≢</code>) is the sum divided by the tally.
```

<div class="example-output" markdown="1">

The average of a vector (<code class="language-apl">+⌿÷≢</code>) is the sum divided by the tally.

</div>>

<p class="example">Example: non-APL code</p>

```html
<code class="language-other">getpid()</code> is common to all UNIX platforms.
```

<div class="example-output" markdown="1">

<code class="language-other">getpid()</code> is common to all UNIX platforms.

</div>>

#### APL Code blocks
Code blocks use `<pre><code class="language-apl"></code></pre>` or triple backticks with "apl" (lowercase) to denote the language.

<p class="example">Example: Using HTML</p>

```
<pre><code class="language-apl">      3+⍳10
4 5 6 7 8 9 10 11 12 13
</code></pre>
```

```apl
      3+⍳10
4 5 6 7 8 9 10 11 12 13
```

<p class="example">Example: Using backticks</p>

```````
```apl
      3+⍳10
4 5 6 7 8 9 10 11 12 13
```
```````

```apl
      3+⍳10
4 5 6 7 8 9 10 11 12 13
```

#### Non-APL Code Blocks
Use `<code class="language-other">[your code here]</code>` or triple backticks with "other" (lowercase).

<p class="example">Example: Using HTML</p>

```
<pre><code class="language-other">>>> print("hello")   # Code block example
hello</code></pre>
```

```other
>>> print("hello")   # Code block example
hello
```

<p class="example">Example: Using backticks</p>

``````
```other
>>> print("hello")   # Code block example
hello
```
``````

```other
>>> print("hello")   # Code block example
hello
```

### APL Code <span class="language-apl">+⌿÷≢⌹</span> in Titles
Try to avoid using APL code in headings – although it is rendered in APL font on the page, it is not rendered correctly in the navigation menus.

If it is essential, use `<span class="language-apl">` to add code to titles. 

<p class="example">Example</p>

```
### APL Code <span class="language-apl">+⌿÷≢⌹</span> in Titles
```

## References
Always use meaningful link text. Never use "see [here](#)".

### Within the same document
Reference to another section within the same document.

```
See [Note Types](#note-types)
```

<div class="example-output" markdown="1">
See [Note Types](#note-types)
</div>>

### To another document
References to other documents should correctly name the document and be italicised. Ideally they should link to the document.

<p class="example">Example</p>

```
For more information on the *Clean* function, see the [*SALT User Guide*](https://docs.dyalog.com/latest/SALT%20User%20Guide.pdf).
```

<div class="example-output" markdown="1">

For more information on the *Clean* function, see the [*SALT User Guide*](https://docs.dyalog.com/latest/SALT%20User%20Guide.pdf).

</div>>

## Command Codes and Keys
When referring to keyboard shortcuts, such as those controlled by `⎕KL` on Microsoft Windows, put the code in angle brackets.

Closing angle brackets must be escaped with a backslash (e.g. `<keycode\>`).

<p class="example">Example</p>

```
<TC\> is the command code for trace.
```

<div class="example-output" markdown="1">
<TC\> is the command code for trace.
</div>>

## Keyboard keys
Use the `<kbd>` tag to refer to keys.

<p class="example">Example</p>

```
Press the <kbd>Enter</kbd> key.
```

<div class="example-output" markdown="1">
Press the <kbd>Enter</kbd> key.
</div>>

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
Sometimes it is relevant to include an icon. For example, when describing a combination of key presses.

Icons are included using a special name surrounded by colons.

Here is the list of icons used in our documentation.

- Apple icons:
    - Apple key: :material-apple: (`:material-apple:`)
    - Command Key: :material-apple-keyboard-command: (`:material-apple-keyboard-command:`)
    - Option key: :material-apple-keyboard-option: (`:material-apple-keyboard-option:`)
- Windows Key: :fontawesome-brands-windows: (`:fontawesome-brands-windows:`) 

<p class="example">Example</p>

```
Use <kbd markdown="1">:material-apple-keyboard-command: + C</kbd> to copy text
```

<div class="example-output" markdown="1">
Use <kbd markdown="1">:material-apple-keyboard-command: + C</kbd> to copy text
</div>>
