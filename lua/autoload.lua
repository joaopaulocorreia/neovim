local paths = {
  { clone = "https://github.com/nvim-lua/plenary.nvim", name = "plenary" },
  { clone = "https://github.com/nvim-telescope/telescope.nvim", name = "telecope" },
  { clone = "https://github.com/folke/zen-mode.nvim", name = "zen-mode" },
  { clone = "https://github.com/nvim-tree/nvim-tree.lua", name = "nvim-tree" },
  { clone = "https://github.com/kylechui/nvim-surround", name = "nvim-surround" }
}

for key, value in ipairs(paths) do
	addRuntimePath("sources/" .. value["name"])
	os.execute("git clone " .. value["clone"] .. " ~/.config/nvim/sources/" .. value["name"])
end

require('zen-mode')
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

