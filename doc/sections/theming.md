THEMING
=======

Colors and other properties can also be changed using the configuration.  For
example, we can have:

    ---
    author: 'Jasper Van der Jeugt'
    title: 'This is a test'
    patat:
        wrap: true
        theme:
            emph: [vividBlue, onVividBlack, bold]
            imageTarget: [onDullWhite, vividRed]
    ...

    # This is a presentation

    This is _emph_ text.

    ![Hello](foo.png)

The properties that can be given a list of styles are:

- `borders`
- `header`
- `codeBlock`
- `bulletList`
- `orderedList`
- `blockQuote`
- `definitionTerm`
- `definitionList`
- `tableHeader`
- `tableSeparator`
- `emph`
- `strong`
- `code`
- `linkText`
- `linkTarget`
- `strikeout`
- `quoted`
- `math`
- `imageText`
- `imageTarget`

The accepted styles are:

- `bold`
- `dullBlack`
- `dullBlue`
- `dullCyan`
- `dullGreen`
- `dullMagenta`
- `dullRed`
- `dullWhite`
- `dullYellow`
- `onDullBlack`
- `onDullBlue`
- `onDullCyan`
- `onDullGreen`
- `onDullMagenta`
- `onDullRed`
- `onDullWhite`
- `onDullYellow`
- `onVividBlack`
- `onVividBlue`
- `onVividCyan`
- `onVividGreen`
- `onVividMagenta`
- `onVividRed`
- `onVividWhite`
- `onVividYellow`
- `underline`
- `vividBlack`
- `vividBlue`
- `vividCyan`
- `vividGreen`
- `vividMagenta`
- `vividRed`
- `vividWhite`
- `vividYellow`

### Syntax Highlighting

As part of theming, syntax highlighting is also configurable.  This can be
configured like this:

    ---
    patat:
      theme:
        syntaxHighlighting:
          decVal: [bold, onDullRed]
    ...

    ...

`decVal` refers to "decimal values".  This is known as a "token type".  For a
full list of token types, see [this list] -- the names are derived from there in
an obvious way.

[this list]: https://hackage.haskell.org/package/highlighting-kate-0.6.3/docs/Text-Highlighting-Kate-Types.html#t:TokenType
