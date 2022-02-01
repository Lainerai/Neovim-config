local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local M = {}

local options = { noremap = true, silent = true }
local silent = { silent = true }

-- LEADER KEY --
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- NAVIGATE --
--- Insert mode.
map('i', '<C-k>', '<Up>', silent)
map('i', '<C-j>', '<Down>', silent)
map('i', '<C-l>', '<Right>', silent)
map('i', '<C-h>', '<Left>', silent)
map('i', '<C-e>', '<End>', silent)
map('i', '<C-a>', '<ESC>^i', silent)
--- Buffer.
map('n', '<Tab>', ":bnext<CR>", silent)
map('n', '<S-Tab>', ":bprevious<CR>", silent)
--- Window.
map('n', '<C-k>', '<C-w>k', silent)
map('n', '<C-j>', '<C-w>j', silent)
map('n', '<C-l>', '<C-w>l', silent)
map('n', '<C-h>', '<C-w>h', silent)


-- BUFFER --
-- New buffer.
map('n', '<leader>bn', ':enew<CR>', silent)
--- Save buffer.
map('n', '<leader>w', '<cmd>w<cr>', silent)
--- Quit, close buffers, etc.
map('n', '<leader>q', '<cmd>qa<cr>', silent)
map('n', '<leader>x', '<cmd>x!<cr>', silent)
map('n', '<leader>d', '<cmd>Sayonara<cr>', { silent = true, nowait = true })

-- TABS -- 
map('n', '<S-t>', ':tabnew<CR>', silent)

-- TOOLS --
--- Terminal.
map('n', '<leader>tv', ':vnew +terminal | : set nonumber | startinsert <CR>', silent)
map('n', '<leader>th', ':new +terminal | : set nonumber | startinsert <CR>', silent)
--- Nvimtree.
map('n', '<leader>e', ':NvimTreeToggle<cr>', options)
map('n', '<leader>v', ':NvimTreeFocus<cr>', options)
--- Neogit.
map('n', '<leader>ga', ':Neogit<cr>', options)
--- Packer.
map('n', '<leader>u', ':PackerSync<cr>', options)
--- Telescope.
map('n', '<leader>p', ':lua telescope_find_files_in_path("~/Documents/Projects/")<CR>', silent)
map('n', '<leader>c', ':lua telescope_find_files_in_path("~/.config/nvim/")<CR>', silent)
map('n', '<leader>ff', [[<cmd>Telescope find_files theme=get_dropdown<cr>]], silent)
map('n', '<leader>fg', [[<cmd>Telescope live_grep theme=get_dropdown<cr>]], silent)
map('n', '<leader>fk', [[<cmd>Telescope keymaps theme=get_dropdown<cr>]], silent)
map('n', '<leader>fc', [[<cmd>Telescope commands theme=get_dropdown<cr>]], silent)
map('n', '<leader>ft', [[<cmd>Telescope colorscheme theme=get_dropdown<cr>]], silent)


-- MISC --
--- Toggle line number.
map('n', '<leader>nt', ':set nu!<CR>', silent)
--- Indent with Tab and Shift-Tab.
map('v', '<Tab>', '>', {})
map('v', '<S-Tab>', '<', {})
--- Don't leave visual mode after indenting.
map('v', '>', '>gv^', { noremap = true  })
map('v', '<', '<gv^', { noremap = true  })
-- use ESC to turn off search highlighting.
map("n", "<Esc>", ":noh <CR>", silent)
-- Make Y key yank to end of line.
map('n', 'Y', 'y$', { noremap = true  })

return M
