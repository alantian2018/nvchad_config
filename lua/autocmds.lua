require "nvchad.autocmds"
local autocmd = vim.api.nvim_create_autocmd

-- Create a specific autogroup for startup actions
local startup_group = vim.api.nvim_create_augroup("NvChadStartup", { clear = true })

-- Run only on VimEnter (Neovim startup)
autocmd("VimEnter", {
  group = startup_group,
  callback = function()
    -- Open a new tab
    vim.cmd("tabnew")
    
    -- Open NvimTree (equivalent to Ctrl+N)
    vim.cmd("NvimTreeToggle")
    
    -- Create a horizontal split with terminal at the bottom with height 20
    vim.cmd("botright 20split")
    vim.cmd("terminal")
    
    -- Return focus to the main window in the tab
    vim.cmd("wincmd k")
  end,
  once = true  -- Ensure this only runs once
})

