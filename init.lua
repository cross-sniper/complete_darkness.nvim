-- ~/.config/nvim/pack/myplugins/start/myplugin/init.lua

-- Define a function to print a message
local function hello_nvim()
    print("Hello, Neovim!")
end

-- Create a Neovim command to call the function
vim.api.nvim_create_user_command('HelloNvim', hello_nvim, {})
