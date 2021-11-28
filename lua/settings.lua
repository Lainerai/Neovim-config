local o = vim.opt
local g = vim.g
local cmd = vim.cmd


o.splitright = true           -- Splits open on the right
o.number = true               -- Enable line numbers.
o.expandtab = true            -- Convert tabs to spaces.
o.mouse = 'a'                 -- Enable mouse.
o.wildmenu = true             -- Enable a menu (Wildmenu) at the bottom of the nvim window.
o.hlsearch = true             -- Enable search highlighting.
o.ignorecase = true           -- Ignore case when searching.
o.smartcase = true            -- Automatically switch search to case-sensitive when search query contains an uppercase letter.
o.shiftwidth = 2              -- When shifting, indent using four spaces.
o.cursorline = true           -- Highlight the current line
o.clipboard = 'unnamedplus'   -- Use system clipboard
o.updatetime = 300
o.foldlevelstart = 99
o.tabstop = 2 
o.softtabstop = 0

-- Set colorscheme.
o.termguicolors = true    
g.tokyonight_style = "night"
g.tokyonight_italic_functions = true
g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- Change the "hint" color to the "orange" color, and make the "error" color bright red.
g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
-- Load the colorscheme.
cmd[[colorscheme tokyonight]]
