# footnotes.vim

*footnotes.vim* is a small plugin for appending the current date to (Multi)Markdown footnotes in [Vim](http://www.vim.org/ "Vim").

## Installation

**Pathogen:**

    cd ~/.vim/bundle
    git clone https://github.com/gummesson/footnotes.vim.git

If you're not using [Pathogen](https://github.com/tpope/vim-pathogen "Pathogen") place the corresponding files in their respective folders in the home Vim directory or follow the instructions from the plugin manager you're using.

## Usage

**Append date to footnotes:**

    :FootnotesAppend

**Remove date from footnotes:**

    :FootnotesRemove

**Toggle between both functions:**

    :FootnotesToggle

This will reformat a footnote from `[^1]` to `[^20130214-1]` or from `[^20130214-1]` to `[^1]`.

## Configuration

The default date format for the footnotes is `%Y%m%d`, but you can easily change it by adding the following line to your `vimrc` file:

    let g:footnotes_format = ""

Insert the desired format between the quotes.

## Screenshot

![footnotes.vim](http://i.imgur.com/2l8FL8i.gif)

## License

[Vim License](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license "Vim License")