# version14.nvim

A Neovim colorscheme ported from the [version14 Zed theme](../zed-theme), featuring a dark and light variant built around a lime accent (`#D2FF3A`).

## Requirements

- Neovim 0.8+

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "mathieusouflis/version14.nvim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme version14")
  end,
}
```

## Usage

```lua
-- Dark variant (default)
vim.cmd("colorscheme version14")

-- Light variant
require("version14").setup({ style = "light" })
vim.cmd("colorscheme version14")

-- Or via global variable
vim.g.version14_style = "light"
vim.cmd("colorscheme version14")
```

## Structure

```
├── colors/
│   └── version14.lua       -- Entry point (calls require("version14").load())
└── lua/version14/
    ├── init.lua            -- setup() and load() functions
    ├── palette.lua         -- Color definitions for dark and light variants
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
