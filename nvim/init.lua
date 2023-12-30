
require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

-- Neovide
vim.o.guifont = "Hack Nerd Font:h9"
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 1
vim.g.transparency = 0.8
vim.g.neovide_floating_blur_amount_x = 1.0
vim.g.neovide_floating_blur_amount_y = 1.0
vim.cmd [[
  set tabstop=4|set shiftwidth=4|set noexpandtab
]]


