DESCRIPTION
===========

`patat` is a small tool that allows you to show presentations using only an ANSI
terminal.  It does not require `ncurses`.

Features:

- Leverages the great [Pandoc] library to support many input formats including
  [Literate Haskell].
- Supports [smart slide splitting](#input-format).
- There is a [live reload](#running) mode.
- [Theming](#theming) support.
- Optionally [re-wrapping](#configuration) text to terminal width with proper
  indentation.
- Syntax highlighting for nearly one hundred languages generated from [Kate]
  syntax files.
- Written in [Haskell].

![screenshot](extra/screenshot.png?raw=true)

[Kate]: https://kate-editor.org/
[Haskell]: http://haskell.org/
[Pandoc]: http://pandoc.org/

Controls
--------

- **Next slide**: `space`, `enter`, `l`, `→`
- **Previous slide**: `backspace`, `h`, `←`
- **Go forward 10 slides**: `j`, `↓`
- **Go backward 10 slides**: `k`, `↑`
- **First slide**: `0`
- **Last slide**: `G`
- **Reload file**: `r`
- **Quit**: `q`

The `r` key is very useful since it allows you to preview your slides while you
are writing them.  You can also use this to fix artifacts when the terminal is
resized.

Input format
------------

The input format can be anything that Pandoc supports.  Plain markdown is
usually the most simple solution:

    ---
    title: This is my presentation
    author: Jane Doe
    ...

    # This is a slide

    Slide contents.  Yay.

    ---

    # Important title

    Things I like:

    - Markdown
    - Haskell
    - Pandoc

Horizontal rulers (`---`) are used to split slides.

However, if you prefer not use these since they are a bit intrusive in the
markdown, you can also start every slide with an `h1` header.  In that case, the
file should not contain a single horizontal ruler.

This means the following document is equivalent:

    ---
    title: This is my presentation
    author: Jane Doe
    ...

    # This is a slide

    Slide contents.  Yay.

    # Important title

    Things I like:

    - Markdown
    - Haskell
    - Pandoc

Configuration
-------------

`patat` is fairly configurable.  The configuration is done using [YAML].  There
are two places where you can put your configuration:

1. In the presentation file itself, using the [Pandoc metadata header].
2. In `$HOME/.patat.yaml`

[YAML]: http://yaml.org/
[Pandoc metadata header]: http://pandoc.org/MANUAL.html#extension-yaml_metadata_block

For example, we can turn on line wrapping by using the following file:

    ---
    title: Presentation with wrapping
    author: John Doe
    patat:
        wrap: true
    ...

    This is a split
    line which should
    be re-wrapped.

Or we can use a normal presentation and have the following `$HOME/.patat.yaml`:

    wrap: true
