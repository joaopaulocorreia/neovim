local nvim_path = '~/.config/nvim/'

function addRuntimePath(path)
  vim.cmd.set("rtp+=" .. nvim_path .. path)
end
