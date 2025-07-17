require "nvchad.autocmds"
local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  group = startup_group,
  callback = function()
    vim.defer_fn(function()
      vim.cmd("tabnew")
      vim.cmd("NvimTreeToggle")
      vim.cmd("botright 20split")
      vim.cmd("terminal")
      vim.cmd("wincmd k")
    end, 100)  -- Delay in milliseconds (100ms usually works)
  end,
  once = true
})

