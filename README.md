# Vim RTF Pygmentize

Suppose you will write a presentation using Keynote and needs to converts chunks of code to Keynote without losing 
syntax highlighting. This plugins helps you with that: it converts pieces of code to RTF and copies it to
the OSX clipboard.

It is basically a wrapper around [pygments](http://pygments.org/) library, and was created to
help me adding chunks of code to my keynote presentations.

## Dependencies

For now, this plugin only works on OS X but I would be grateful if someone make it works in
another systems.

To use it you will need the pygments library. To install use the easy_install package manager with:

Before installing this plugin itself, you need to install the pygments library. Do this using this command:

```
easy_install pygments
```

## Configuration


There is two available options to configure this plugin:

```vim
" Valid options are: 'default', 'emacs', 'friendly' and 'colorful'
let g:rtfp_theme = 'emacs'
```

and

```vim
let g:rtfp_font = 'Monaco'
```

## Usage

To highlight a file, you can use this:

```vim
:RTFPygmentize
```

You can also specify the language to use on highlight with:

```vim
:RTFPygmentize <lang>
```

It also works with visual selections.

## Inspiration

This Vim plugin is inspired at [rtf-highlight](https://github.com/dharanasoft/rtf-highlight) plugin

## Maintainers

Rafael Mendonça França (https://github.com/rafaelfranca)

## License

MIT License. Copyright 2011 Rafael França
