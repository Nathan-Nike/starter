-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])
vim.cmd([[ hi NormalNC guibg=NONE ctermbg=NONE ]])
vim.cmd([[ hi EndOfBuffer guibg=NONE ctermbg=NONE ]])

vim.cmd.colorscheme("habamax")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
  end,
})
