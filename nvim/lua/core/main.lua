--> base
vim.opt.showcmd = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

-- tabs and sp	aces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- keymap
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

-- remap Caps Lock
vim.api.nvim_create_autocmd("VimEnter", { command = "silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'", })
vim.api.nvim_create_autocmd("VimLeave", { command = "!xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'", })
-- color
function ColorVim(color)
    color = color or "darkvoid"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "none" })
end

ColorVim()
