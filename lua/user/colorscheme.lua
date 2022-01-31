-- Plugin : vim-nightfly-guicolors
-- https://github.com/bluz71/vim-nightfly-guicolors

vim.cmd ([[
if (has("termguicolors"))
  set termguicolors
endif
colorscheme nightfly
]])

vim.g.nightflyCursorColor = 1

vim.g.nightflyNormalFloat = 1 -- floating window
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
	vim.lsp.handlers.hover, {
		border = 'single'
	}
)
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
	vim.lsp.handlers.signatureHelp, {
		border = 'single'
	}
)
local opts = {noremap = true, silent = true}
vim.api.nvim_buf_set_keymap(0, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next({severity_limit = "Warning", popup_opts = {border = "single"}})<CR>', opts)
vim.api.nvim_buf_set_keymap(0, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev({severity_limit = "Warning", popup_opts = {border = "single"}})<CR>', opts)

-- # lunarvim/darkplus
--vim.cmd [[
--try
--  colorscheme darkplus
--catch /^Vim\%((\a\+)\)\=:E185/
--  colorscheme default
--  set background=dark
--endtry
--]]
