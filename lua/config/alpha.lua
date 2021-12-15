local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
dashboard.section.header.val = {
    [[                               __                ]],
    [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "SPC f f", "  Find Files" , ":Telescope find_files<CR>"),
    dashboard.button( "SPC f b", "  File Browser" , ":Telescope file_browser<CR>"),
    dashboard.button( "SPC g", "  Neogit" , ":Neogit<CR>"),
    dashboard.button( "SPC c", "  Edit Config" , ':lua telescope_find_files_in_path("~/.config/nvim/")<CR>'),
    dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
}
--[[ local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune ]]
alpha.setup(dashboard.opts)
