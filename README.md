# RTF Pygmentize

This plugin is used to syntax highlight pieces of code to RTF and it automatically copies it to the OSX clipboard.
This was basically done to scratch an itch while building my keynote presentations.

This plugin is basically a wraper around [pygments](http://pygments.org/) library.

## Dependencies

For now, this plugin only works on MacOS X but I would be grateful if someone make it works in others systems

To use it we need the pygments lubrary. To install use the easy_install packet manage with:

```
easy_install pygments
```

## Configuration

You can configure this plugin using two options

```vim
" Are valid options: 'default', 'emacs', 'friendly' and 'colorful'
let g:rtfp_theme = 'emacs'
```

and

```vim
let g:rtfp_font = 'Monaco'
```

## Usage

To highlight a file, simply use:

```vim
:RTFPygmentize
```

You can also specify the language to use on highlight with:

```vim
:RTFPygmentize <lang>
```

It also works on visual selections.

## Inspiration

This Vim plugin is inspired at [rtf-highlight](https://github.com/dharanasoft/rtf-highlight) plugin

## Maintainers

Rafael Mendonça França (https://github.com/rafaelfranca)

## License

MIT License. Copyright 2011 Rafael França
