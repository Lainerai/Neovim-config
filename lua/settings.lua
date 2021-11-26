local o = vim.opt
local g = vim.g
local cmd = vim.cmd

-- Enable line numbers.
o.number = true

-- Convert tabs to spaces.
o.expandtab = true

-- Enable mouse.
o.mouse = 'a'

-- Enable a menu (Wildmenu) at the bottom of the nvim window.
o.wildmenu = true

-- Enable search highlighting.
o.hlsearch = true

-- Ignore case when searching.
o.ignorecase = true

-- Automatically switch search to case-sensitive when search query contains an uppercase letter.
o.smartcase = true

-- Indent using four spaces.
o.tabstop = 2
o.softtabstop = 0

-- When shifting, indent using four spaces.
o.shiftwidth = 2

-- Highlight the current line
o.cursorline = true

-- Set colorscheme.
o.termguicolors = true
g.tokyonight_style = "night"
g.tokyonight_italic_functions = true
g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- Change the "hint" color to the "orange" color, and make the "error" color bright red.
g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
-- Load the colorscheme.
cmd[[colorscheme tokyonight]]
