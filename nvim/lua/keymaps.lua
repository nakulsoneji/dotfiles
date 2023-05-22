local map = require("utils").map

-- telescope
map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<Leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<Leader>fr", "<cmd>Telescope bibtex<cr>")

-- nvim tree
map("n", "<Leader>tt", "<cmd>NvimTreeToggle<cr>")
map("n", "<Leader>tf", "<cmd>NvimTreeFindFileToggle<cr>")
map("n", "<Leader>tr", "<cmd>NvimTreeRefresh<cr>")
map("n", "<Leader>t", "<cmd>NvimTreeFocus<cr>")

--trouble 
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

--bufferline
map("n", "<Leader>q", "<cmd>w<cr><cmd>bd<cr>")
map("n", "<Leader>1", "<cmd>BufferLineGoToBuffer 1<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>2", "<cmd>BufferLineGoToBuffer 2<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>3", "<cmd>BufferLineGoToBuffer 3<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>4", "<cmd>BufferLineGoToBuffer 4<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>5", "<cmd>BufferLineGoToBuffer 5<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>6", "<cmd>BufferLineGoToBuffer 6<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>7", "<cmd>BufferLineGoToBuffer 7<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>8", "<cmd>BufferLineGoToBuffer 8<cr>",
  {silent = true, noremap = true}
)
map("n", "<Leader>9", "<cmd>BufferLineGoToBuffer 9<cr>",
  {silent = true, noremap = true}
)

--diagnostics 

--newline (for html)
map("i", "<C-j>", "<esc>$i<right><cr>")

--FTerm 
-- map('n', '<A-i>', '<CMD>lua require("FTerm").open()<CR>')
-- map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>')
-- map('t', '<A-q>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>')


