# version14

A colorscheme for Neovim and Vim 8+, ported from the [version14 Zed theme](../zed-theme). Dark, black, and light variants built around a lime accent (`#D2FF3A`).

## Requirements

| Editor | Minimum version | Notes |
|--------|-----------------|-------|
| Neovim | 0.8+ | Lua implementation — full plugin support |
| Vim    | 8.0+ | VimScript implementation — base groups + common plugins |

Both require a terminal with true color support (`termguicolors`).

## Installation

### Neovim — lazy.nvim

```lua
{
  "version14/version14.vim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme version14")
  end,
}
```

### Neovim — LazyVim

Add `~/.config/nvim/lua/plugins/colorscheme.lua`:

```lua
return {
  { "version14/version14.vim", priority = 1000 },
  { "LazyVim/LazyVim", opts = { colorscheme = "version14" } },
}
```

### Vim — vim-plug

```vim
Plug 'version14/version14.vim'
```

### Vim — manual

Copy `colors/version14.vim` to `~/.vim/colors/version14.vim`.

## Usage

### Neovim

```lua
-- Dark variant (default)
vim.cmd("colorscheme version14")

-- Black variant (pure black, ideal for OLED)
require("version14").setup({ style = "black" })
vim.cmd("colorscheme version14")

-- Light variant via setup (call before colorscheme)
require("version14").setup({ style = "light" })
vim.cmd("colorscheme version14")

-- Via global variable (dark / black / light)
vim.g.version14_style = "black"
vim.cmd("colorscheme version14")
```

### Vim

```vim
" Dark variant (default)
colorscheme version14

" Black variant (set before colorscheme)
let g:version14_style = 'black'
colorscheme version14

" Light variant (set before colorscheme)
let g:version14_style = 'light'
colorscheme version14
```

## Plugin support

### Neovim

| Plugin | Notes |
|--------|-------|
| nvim-treesitter | Full |
| LSP + diagnostics | Full |
| gitsigns.nvim | Full |
| telescope.nvim | Full |
| indent-blankline.nvim | v2 and v3 |
| snacks.nvim | Dashboard, notifier, picker, indent, input |
| mini.nvim | Statusline, tabline, indentscope, icons, clue |
| which-key.nvim | Full |
| flash.nvim | Full |
| blink.cmp | Full (all kind icons) |
| noice.nvim | Full |
| trouble.nvim | Full |
| todo-comments.nvim | Full |
| neo-tree.nvim | Full |

### Vim

| Plugin | Notes |
|--------|-------|
| vim-gitgutter | Full |
| vim-signify | Full |
| ALE | Error/warning/info signs and underlines |
| CoC | Error/warning/info/hint signs and underlines |
| NERDTree | Full |
| fzf | Color palette via `g:fzf_colors` |

## Structure

```
colors/
  version14.lua       Neovim 0.8+ entry point (Lua)
  version14.vim       Vim 8+ entry point (VimScript) + Neovim <0.8 fallback
lua/version14/
  init.lua            setup() / load()
  palette.lua         Color definitions for dark / black / light
  highlights.lua      Highlight group mappings (Neovim)
```

## Palette

| Role | Dark | Black | Light |
|------|------|-------|-------|
| Background | `#14171B` | `#000000` | `#E8EAED` |
| Accent (lime) | `#D2FF3A` | `#D2FF3A` | `#4E6600` |
| Blue | `#6FB1FF` | `#6FB1FF` | `#1B4FCC` |
| Green | `#4ADE80` | `#4ADE80` | `#166534` |
| Yellow | `#FFB347` | `#FFB347` | `#92400E` |
| Red | `#FF5C5C` | `#FF5C5C` | `#B91C1C` |
