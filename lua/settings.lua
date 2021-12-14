local o = vim.opt
local cmd = vim.cmd

-- Behaviour
o.splitright = true           -- Splits open on the right.
o.splitbelow = true           -- Splits open on the bottom.
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
o.scrolloff = 5               -- determines the number of context lines you would like to see above and below the cursor.
o.sidescrolloff = 3           -- Scroll off to the side.
o.number = true               -- Enable line numbers.
o.mouse = 'a'                 -- Enable mouse.
o.wildmenu = true             -- Enable a menu (Wildmenu) at the bottom of the nvim window.
o.cursorline = true           -- Highlight the current line.
o.clipboard = 'unnamedplus'   -- Use system clipboard.
o.wrap = false                -- Display long lines as just one line.
o.completeopt = 'menuone,noselect,noinsert' -- Completion options.
o.list            = true      -- show whitespace
o.listchars = {
         nbsp       = '⦸',      -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8).
         extends    = '»',      -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB).
         precedes   = '«',      -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB).
         tab        = '▷─',     -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85).
         trail      = '•',      -- BULLET (U+2022, UTF-8: E2 80 A2).
         space      = ' ',
}
o.fillchars = {
        diff        = '∙',      -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99).
        eob         = ' ',      -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer.
        fold        = '·',      -- MIDDLE DOT (U+00B7, UTF-8: C2 B7).
        vert        = ' ',      -- remove ugly vertical lines on window division.
}

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

-- Jump to the last position when reopening a file
cmd([[
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
]])

-- Don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- 2 spaces for selected filetypes
cmd([[ autocmd FileType xml,html,xhtml,css,scssjavascript,lua,dart setlocal shiftwidth=2 tabstop=2 ]])
-- json
cmd([[ au BufEnter *.json set ai expandtab shiftwidth=2 tabstop=2 sta fo=croql ]])
