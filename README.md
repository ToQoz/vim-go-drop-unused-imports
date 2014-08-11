# vim-go-drop-unused-imports

## Requirements

- [vim-jp/go-vim](http://github.com/vim-jp/go-vim) or [fatih/vim-go](http://github.com/fatih/vim-go) or other provider of drop command.
- [ToQoz/goimps](http://github.com/ToQoz/goimps)
	`go get github.com/ToQoz/goimps`
	Add `set rtp+=$GOPATH/src/github.com/ToQoz/goimps/misc/vim` to your vimrc

## Installation

### with NeoBundle

Add `NeoBundle 'ToQoz/vim-go-drop-unused-imports'`

### with Vundle

Add `Bundle 'ToQoz/vim-go-drop-unused-imports'`

## Configuration

If you want to use custom godrop command that is not :Drop nor :GoDrop.

```
g:godrop_command = "CustomeGoDrop"
```

if you don't define `g:godrop_command`, define in this plugin by following rule.

```vim
if exists(":Drop")
    let g:godrop_command = "Drop"
else
    let g:godrop_command = "GoDrop"
endif
```

## Usage

```
:DropUnused
```
