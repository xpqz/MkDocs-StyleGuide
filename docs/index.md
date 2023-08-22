# Styles

## Paragraph Styles

## Notes
[Admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/)

Various icons are used in the documentation to emphasise specific material:

!!! Tip
    Hints, tips, best practice and recommendations from Dyalog Ltd

    *For example:*  
    If both DOSLimit and BufferSize are set, then the smaller value applies. Dyalog Ltd recommends using a modest BufferSize and not setting EnableBufferSizeHttp to ensure that abnormally large headers are not processed, then setting an appropriate DOSLimit to accommodate the expected size messages

!!! Info "INFORMATION"
    Highlighting material of particular significance or relevance

!!! Warning "WARNING"
    Warnings about actions that can impact the behaviour of Dyalog or have unforeseen consequences

!!! Abstract "LEGACY"
  Legacy information pertaining to behaviour in earlier releases of Dyalog or to functionality that still exists but has been superseded and is no longer recommended

  We might want to create a custom admonition for this


Example: "The .NET interface only works with the Unicode edition of Dyalog; Classic edition is not supported."

Example: "The structure under the SALT directory must not be modified and the five sub-directories must not be renamed."

Example: "Although .dyapp files are supported for backwards compatibility, Dyalog Ltd recommends launching the interpreter directly from any APL source or configuration file (functionality introduced with Dyalog version 18.0) rather than through the now-superseded .dyapp file mechanism."

Notes are also used to differentiate between operating-system-specific behaviour in cross-platform documents:

!!! linux
    *For example:*  
    The MyUCMDs directory is located directly under the $HOME directory

Example: ""
macOS
Example: "By default, the cache file is located in Users/<name>/.dyalog/"
Microsoft Windows
Example: "By default, the cache file is located in Documents\Dyalog APL <version> Files\"
UNIX
Example: "By default, the cache file is located in $HOME/.dyalog/"

!!! pied-piper
    This is the default MkDocs [custom admonition (see https://squidfunk.github.io/mkdocs-material/reference/admonitions/#custom-admonitions)](https://squidfunk.github.io/mkdocs-material/reference/admonitions/#custom-admonitions).

