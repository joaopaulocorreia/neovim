path = '~/.config/nvim/'

vim.cmd.set("rtp+=./")
vim.cmd.set("rtp+=" .. path .. "sources/plenary.nvim/")
vim.cmd.set("rtp+=" .. path .. "sources/telescope.nvim/")
vim.cmd.set("rtp+=" .. path .. "sources/solarized-osaka.nvim/") 
vim.cmd.set("rtp+=" .. path .. "sources/neogen/") 
vim.cmd.set("rtp+=" .. path .. "sources/zen-mode.nvim/") 
vim.cmd.set("rtp+=" .. path .. "sources/nvim-tree.lua/")  -- https://github.com/nvim-tree/nvim-tree.lua
vim.cmd.set("rtp+=" .. path .. "sources/nvim-surround/")  -- https://github.com/kylechui/nvim-surround

require('zen-mode')
require('neogen').setup({})
require("nvim-surround").setup({})

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

