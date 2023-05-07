
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.scrolloff = 16
vim.opt.mouse = "c"

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.g.indentLine_char = "▏"

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-]>", 'copilot#Next()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-\\>", 'copilot#Previous()', { silent = true, expr = true })

vim.g.gitblame_enabled = 1
--set ruler laststatus=2 showcmd showmode
vim.g.ruler = true
vim.g.laststatus = 2
vim.g.showcmd = true
vim.g.showmode = true

-- set up {{ to create {{  }} in vue files
vim.api.nvim_set_keymap("i", "{{", "{{  }}<Left><Left><Left>", { noremap = true, silent = true })
