vim.g.mapleader = " "
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- Yank to system clipboard
vim.keymap.set('n', '<leader>p', '"+p')        -- Paste from system clipboard

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<A-Down>", "yyp", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Up>", "yyP", { noremap = true, silent = true })

vim.keymap.set("v", "<A-Down>", "y'>p", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Up>", "y'<P", { noremap = true, silent = true })

vim.opt.clipboard = "unnamedplus"


