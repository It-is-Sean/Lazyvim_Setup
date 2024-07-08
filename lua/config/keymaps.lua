-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--LAZYGIT
map("n", "<leader>gg", function()
  lazygit:toggle()
end, { desc = "Lazygit" })
map("n", "<leader>gG", function()
  LazyVim.lazygit()
end, { desc = "Lazygit (cwd)" })

map("n", "r", "<C-r>")
--CODE RUNNER
--map("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = "Run Code" })
--map("n", "<leader>r", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = "Run Code" })

--DAP
map({ "n", "i" }, "<F5>", function()
  require("dap").continue()
end, { desc = "Launch/Contunue Debug" })
map({ "n", "i" }, "<f10>", function()
  require("dap").step_over()
end, { desc = "Continue" })
map({ "n", "i" }, "<C-f10>", function()
  require("dap").step_into()
end, { desc = "Step Into" })
map({ "n", "i" }, "<C-f5>", function()
  require("dap").stop()
end, { desc = "Stop" })

--TERMINAL
map({ "t", "i", "n" }, "<F7>", "<cmd>ToggleTerm<CR>")

--DELETE & CUT
map({ "n", "v" }, "d", '"_d')
map({ "n", "v" }, "dd", '"_dd')
map({ "n", "v" }, "dw", '"_dw')
map({ "n", "v" }, "D", '"_D')
map({ "n", "v" }, "dG", '"_dG')
map({ "n", "v" }, "x", "d")
map({ "n", "v" }, "xx", "dd")
map({ "n", "v" }, "xw", "dw")
map({ "n", "v" }, "X", "D")
map({ "n", "v" }, "xG", "dG")

--INSERT MOVE
map("i", "<A-h>", "<LEFT>")
map("i", "<A-l>", "<RIGHT>")
map("i", "<A-j>", "<DOWN>")
map("i", "<A-k>", "<UP>")
map("i", "<A-d>", "<DELETE>")
