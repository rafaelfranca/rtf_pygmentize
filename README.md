# Vim RTF Pygmentize

Suppose you will write a presentation using Keynote and need to convert chunks of code to Keynote without losing 
syntax highlighting. This plugin helps you with that: it converts pieces of code to RTF and copies it to
the OSX clipboard.

It is basically a wrapper around the [pygments](http://pygments.org/) library, and was created to
help me adding chunks of code to my Keynote presentations.

## Dependencies

Right now this plugin only works on OS X, but I would be grateful if someone make it work in
another systems.

Before installing the plugin, you need to install the pygments library. You can do it with the following command:

```
easy_install pygments
```

## Configuration

There are two available options to configure this plugin:

```vim
" Valid options are: 'default', 'emacs', 'friendly' and 'colorful'
let g:rtfp_theme = 'emacs'
```

You can use the [vim2pygments](https://github.com/honza/vim2pygments) project to generate more themes to pygments using your vim themes.

and

```vim
let g:rtfp_font = 'Monaco'
```

## Usage

To highlight a file, you can use:

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
