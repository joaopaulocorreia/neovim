vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd.set("background=light")
    vim.cmd.colorscheme("lunaperche")
  end
})
