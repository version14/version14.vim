# version14.nvim

A Neovim colorscheme ported from the [version14 Zed theme](../zed-theme), featuring dark and light variants built around a lime accent (`#D2FF3A`).

## Requirements

- Neovim 0.8+
- A terminal with true color support (`TERM=xterm-256color` or similar)

## Installation

### lazy.nvim (standalone)

```lua
{
  "mathieusouflis/version14.nvim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme version14")
  end,
}
```

### LazyVim

Add a file `~/.config/nvim/lua/plugins/colorscheme.lua`:

```lua
return {
  {
    "mathieusouflis/version14.nvim",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "version14",
    },
  },
}
```

Then remove or disable any other colorscheme plugin (e.g. tokyonight) from your config.

## Usage

```lua
-- Dark variant (default)
vim.cmd("colorscheme version14")

-- Light variant via setup (call before colorscheme)
require("version14").setup({ style = "light" })
vim.cmd("colorscheme version14")

-- Light variant via global variable
vim.g.version14_style = "light"
vim.cmd("colorscheme version14")
```

## Plugin support

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

## Structure

```
├── colors/
│   └── version14.lua       -- Entry point
└── lua/version14/
    ├── init.lua            -- setup() / load()
    ├── palette.lua         -- Color definitions for dark / light
    └── highlights.lua      -- Highlight group mappings
```

## Palette

| Role | Dark | Light |
|------|------|-------|
| Background | `#14171B` | `#E8EAED` |
| Accent (lime) | `#D2FF3A` | `#4E6600` |
| Blue | `#6FB1FF` | `#1B4FCC` |
| Green | `#4ADE80` | `#166534` |
| Yellow | `#FFB347` | `#92400E` |
| Red | `#FF5C5C` | `#B91C1C` |
