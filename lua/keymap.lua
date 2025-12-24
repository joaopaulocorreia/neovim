local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', '<C-s>', vim.cmd.write)
keymap.set('n', '<leader>q', vim.cmd.quit)

keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = 'Telescope resume' })

vim.keymap.set('n', '<leader>zm', vim.cmd.ZenMode, { desc = 'ZenMode' })
