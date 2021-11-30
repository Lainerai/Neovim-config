local o = vim.opt
local g = vim.g
local cmd = vim.cmd

-- Behaviour
o.splitright = true           -- Splits open on the right.
o.splitbelow = true           -- Splits open on the bottom.
o.scrolloff = 12              -- determines the number of context lines you would like to see above and below the cursor.
o.lazyredraw = true           -- faster scrolling.

-- Indent Tabs
o.shiftwidth = 2              -- When shifting, indent using four spaces.
o.tabstop = 2                 -- number of columns occupied by a tab.
o.softtabstop = 0             -- see multiple spaces as tabstops so <BS>.
o.expandtab = true            -- Convert tabs to spaces.

-- Search
o.ignorecase = true           -- Ignore case when searching.
o.smartcase = true            -- Automatically switch search to case-sensitive when search query contains an uppercase letter.
o.hlsearch = true             -- Enable search highlighting.

-- UI
o.termguicolors = true        -- Enable (24-bit) colours.
o.number = true               -- Enable line numbers.
o.mouse = 'a'                 -- Enable mouse.
o.wildmenu = true             -- Enable a menu (Wildmenu) at the bottom of the nvim window.
o.cursorline = true           -- Highlight the current line.
o.clipboard = 'unnamedplus'   -- Use system clipboard.
o.wrap = false                -- Display long lines as just one line.

-- Show list chars.
o.list = true                 -- Enable list chars 
o.listchars='nbsp:␣,trail:·,extends:>,precedes:<' 

-- Update time
o.updatetime = 300            -- Decrease update time.

-- Folding
o.foldlevel = 99
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"

-- Timeout for key codes
o.timeoutlen = 3000
o.ttimeoutlen = 100

-- o.characters for after foldtext, eof, foldcolumn
o.fillchars = "fold: ,foldclose:,foldopen:,foldsep: ,diff: ,eob: "

-- Themes
require[[config.themes.tokyonight]]
require[[config.themes.onedark]]

-- Set themes
cmd "colorscheme tokyonight"
