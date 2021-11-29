local o = vim.opt
local g = vim.g
local cmd = vim.cmd

o.splitright = true           -- Splits open on the right.
o.splitbelow = true           -- Splits open on the bottom.
o.number = true               -- Enable line numbers.
o.expandtab = true            -- Convert tabs to spaces.
o.mouse = 'a'                 -- Enable mouse.
o.wildmenu = true             -- Enable a menu (Wildmenu) at the bottom of the nvim window.
o.hlsearch = true             -- Enable search highlighting.
o.ignorecase = true           -- Ignore case when searching.
o.smartcase = true            -- Automatically switch search to case-sensitive when search query contains an uppercase letter.
o.shiftwidth = 2              -- When shifting, indent using four spaces.
o.cursorline = true           -- Highlight the current line.
o.clipboard = 'unnamedplus'   -- Use system clipboard.
o.tabstop = 2                 -- number of columns occupied by a tab.
o.softtabstop = 0             -- see multiple spaces as tabstops so <BS>.
o.wrap = false                -- Display long lines as just one line.
o.scrolloff = 12              -- determines the number of context lines you would like to see above and below the cursor.
o.breakindent = true
o.list = true
o.timeoutlen = 3000
o.ttimeoutlen = 100
o.updatetime = 300        
o.listchars='nbsp:␣,trail:·,extends:>,precedes:<'
o.foldlevel = 99
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.characters for after foldtext, eof, foldcolumn
vim.opt.fillchars = "fold: ,foldclose:,foldopen:,foldsep: ,diff: ,eob: "


-- Set colorscheme.
o.termguicolors = true    
g.tokyonight_style = "night"
g.tokyonight_italic_functions = true
g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- Change the "hint" color to the "orange" color, and make the "error" color bright red.
g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
-- Load the colorscheme.
cmd "colorscheme tokyonight"

vim.notify = require("notify")
