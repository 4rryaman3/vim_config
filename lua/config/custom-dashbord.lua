local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    "   _  _     _ __    _ __    _   _     __ _     _____  ",
    "  | || |   | '__|  | '__|  | | | |   / _` |   |___ /  ",
    "  | || |_  | |     | |     | |_| |  | (_| |     |_ \\  ",
    "  |__   _| |_|     |_|      \\__, |  \\__,_|   ___) | ",
    "     |_|                     |___/           |_____/  ",
  }
  
  

dashboard.section.buttons.val = {
  dashboard.button("f", "🔍 Find File", ":Telescope find_files<CR>"),
  dashboard.button("g", "🔎 Grep Text", ":Telescope live_grep<CR>"),
  dashboard.button("q", "⏻ Quit", ":qa<CR>"),
}

require("alpha").setup(dashboard.config)
