# Rules for Writing Documentation

## Language

The documentation uses U.K. English for spellings and grammar.

Abbreviations should not be used (for example, shouldn't, can't, won't) and neither should emoticons.

Although the documents are not currently translated, they should be written as if they could be. That means consideration of the language used...can it be understood and translated unambiguously? For example, "configure" should be used rather than "set up" as "set up" can be misunderstood. This might sound silly, but translation is not always done in context, and people can put single words into Google Translate (for example) and get random results! Idioms, colloquialisms, and foreign expressions (including Latin) should also be avoided.

Language style will vary between documents. For example, the Language Reference Guide needs to be very precise and official whereas a User Guide can include less formal statements such as "You might notice that...".

Do **not** use an apostrophe when pluralising an acronym ("CPU's today are..." = WRONG)

Try to make documents future-proof (especially with respect to dates/version numbers, "coming soon", and so on). Variables can help with this!

## Terminology

The following table lists correct terminology and terms to avoid. A complete list of the [approved names for glyphs and primitive functions/operators](https://docs.dyalog.com/latest/CheatSheet%20-%20Nomenclature%20-%20Functions%20and%20Operators.pdf) is also available.

**NOTE:** Although these terms are the correct ones to use, the documentation must always reflect the software. For example, if a field in the software uses "pdf" then the documentation should also use "pdf" when referring to that field content; the software usage always takes precedence.

|**Use**|**Avoid**|
|---|---|
|large-span file|64-bit file|
|small-span file|32-bit file|
|Dyalog (referring to the product)|Dyalog APL|
|Dyalog Ltd (referring to the company)|Dyalog|
|PDF|pdf|
|.NET|.Net, .net, any other variation|
|dfn (Dfn when starting a sentence)|d-fn, D-fn, Dfn (unless starting a sentence), etc.|
|Trace Window|Tracer, Debugger|
|Edit Window|Editor|
|for example|eg, e.g., eg.|
|that is|ie, i.e., ie.|
|note|NB, N.B.|
|Boolean|boolean|
|UNIX|Unix, unix|
|configuration parameter|environment variable|

  
Best practice:

|**Use**|**Avoid**|
|---|---|
|can, might|may|
|want|wish|

## Dyalog-specific Terms

"Dyalog":

- Dyalog = the product
- Dyalog APL = the language
- Dyalog Ltd = the company

Syntax:

- System functions should be written in upper case, for example, ⎕OFF
- System commands should be written in upper case, for example, )CLEAR
- User commands should be written in upper camel case, with user command groups wtirren in upper case, for example, ]LINK.GetItemName
- Configuration parameters should be written in upper case if cross-platform; some of them are written in mixed case on Microsoft Windows, although this not case sensitive so upper case works there too. See the appropriate _Dyalog for `<operating system>` Installation and Configuration Guide_ for operating-system-specific casing if you're documenting a configuration parameter on a particular platform.

## Acronyms

Industry-standard abbreviations and acronyms can be used without explanation, for example, HTTP or XML.

When you use an acronym that is not an industry standard for the first time, write the full word or phrase in its entirety and then enclose its abbreviation or acronym in parentheses. Afterwards, use the abbreviation or acronym alone. For example, "...the Dyalog Remote Communicator (DRC). The DRC can be...".

## Ordinal Numbers

**NOTE:** The documentation, like the default Dyalog Session, uses an index origin of 1.

Ordinal numbers:

- should have postscripts rather than superscripts as superscripts can be hard to read, for example, 3rd.
- should be written as numbers rather than words when referring to something that is 11 or greater OR that is in a list, for example, "the 75th element in the vector" or "the 4th line of code"
- should be written as words rather than numbers when referring to something that is 10 or smaller AND not part of a list, for example, "the first time you do this" or "on the sixth day".

If an algebraic term is being used instead of the number, then it should be italicised to distinguish it from the postscript, for example, "the _i_th term" or "the _n_th time".

## Imaginary Numbers

The imaginary part should be prefixed with a capital letter J (that is how the session returns it), for example, 0J4.

## Lists

Lists can ordered or unordered. You should:

- use an ordered (numbered) list when the order in which steps are taken is important.
- use an unordered (bulleted) list when the order does not matter.

Lists can be nested to a depth of three.

Use full stops for your list items if they complete a sentence (in this situation the list items should start with lower case letters), otherwise leave them without a full stop. In all ordered lists and most unordered lists, full stops will usually be appropriate.

## Third-party Products

Legally, the owner of the product ought to be included the first time that a product is mentioned - this applies to every paragraph. For example, when writing about something that's on the Windows system, "Microsoft Windows" must be used the first time in the paragraph and just "Windows" can be used after that. However, if Windows is referred to in the subsequent paragraph, it needs to be "Microsoft Windows" again.

## Notes

Various icons are used in the documentation to emphasise specific material. Notes are also used to differentiate between operating-system-specific behaviour in cross-platform documents. See [Notes](./style.md#notes).

## Miscellaneous

Full stops should be followed by a single space, not a double space.

When using a dash in a sentence, use an en-dash not a hyphen.

## Libraries: Operating System Differences

- Microsoft Windows: Dynamic Link Library (.dll)
- Linux/UNIX: Shared/static library (.so)
- macOS: Shared/static library (.a)
