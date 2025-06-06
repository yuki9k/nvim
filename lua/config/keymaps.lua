-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Diffview
vim.keymap.set("n", "<leader>dv", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd("DiffviewOpen")
  else
    vim.cmd("DiffviewClose")
  end
end)

-- Motions
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>")
-- vim.keymap.set({ "n", "v" }, "J", "6j")
-- vim.keymap.set({ "n", "v" }, "K", "6k")
vim.keymap.set({ "n", "v", "o" }, "J", "}")
vim.keymap.set({ "n", "v", "o" }, "K", "{")
vim.keymap.set({ "n", "v", "o" }, "H", "^")
vim.keymap.set({ "n", "v", "o" }, "L", "$")

-- -- LSP
vim.keymap.set("n", "<leader>hh", vim.lsp.buf.hover, { desc = "Show hover information" })
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.definition, { desc = "Jump to definition" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, { desc = "Jump to declaration" })
vim.keymap.set("n", "<leader>cc", vim.lsp.buf.incoming_calls, { desc = "Show incoming calls" })
vim.keymap.set("n", "<leader>cC", vim.lsp.buf.outgoing_calls, { desc = "Show outgoing calls" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Snacks.picker
vim.keymap.set("n", "<leader>fp", "<cmd>FzfLua<cr>", { desc = "Picker" })
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>", { desc = "Find help" })
vim.keymap.set("n", "<leader>fc", "<cmd>FzfLua commands<cr>", { desc = "Find commands" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find buffer" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Find pattern live" })
vim.keymap.set("n", "<leader>fG", "<cmd>FzfLua grep<cr>", { desc = "Find pattern" })
vim.keymap.set("n", "<leader>dd", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Show document diagnostics" })
vim.keymap.set("n", "<leader>dd", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Show workspace diagnostics" })
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua grep_cword<cr>", { desc = "Find word under cursor" })

-- Oil
vim.keymap.set("n", "<leader>e", "<cmd>Oil --float<cr>", { desc = "Open Oil" })

-- Persistence
-- load the session for the current directory
vim.keymap.set("n", "<leader>qq", function()
  require("persistence").load()
end, { desc = "Load session for current directory" })

-- select a session to load
vim.keymap.set("n", "<leader>qS", function()
  require("persistence").select()
end, { desc = "Select session to load" })

-- load the last session
vim.keymap.set("n", "<leader>ql", function()
  require("persistence").load({ last = true })
end, { desc = "Load last session" })

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "Stop persistence" })

-- Buffers
vim.keymap.set("n", "<C-x>", "<cmd>bdelete<cr>")
vim.keymap.set("n", "<C-n>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<C-p>", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<C-q>", "<cmd>b#<cr>")

-- Windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true })

-- Other
vim.keymap.set("v", "yc", '"+y')
