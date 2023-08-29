# Making Documents Work for Print
Some experimentation has been done to produce usable PDFs, primarily for the purpose of printing documentation to paper.

[Dyalog/RP-Jenkins-Test]() produces the Link User Guide as a PDF ([dyalog.github.io/RP-Jenkins-Test/3.7/Link%20User%20Guide.pdf](https://dyalog.github.io/RP-Jenkins-Test/3.7/Link%20User%20Guide.pdf)).

The HttpCommand documentation has a [print page (dyalog.github.io/HttpCommand/5.3/print_page)](https://dyalog.github.io/HttpCommand/5.3/print_page/) which simply puts the entire site content in a single HTML document which can be printed in the browser's **File → Print** menu item.

## Cross referencing
References which are inline as part of prose do not work when printed.

The [with-pdf](https://github.com/orzih/mkdocs-with-pdf) plugin adds section numbers, but we need to see if it is possible to have automatic referencing.

## Extra styles

### keepTogether
A class should be created which can be used to wrap elements which should not be split across pages in a printed document.

```css
.keepTogether { page-break-inside: avoid; }
```

### keepWithNext
apply to text that must be kept with the following element

### pageBreakBefore
apply to text that should be at the top of a page

## Figures and tables
- can we refer to an image/figure/table using anchor tags? can figures be numbered automatically?
