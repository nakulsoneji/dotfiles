require("mason").setup({
  PATH = "prepend",
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup({
	ensure_installed = { "rust_analyzer", "lua_ls", "taplo", "cssls", "tsserver", "clangd", "jsonls" }
})

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({
    buffer = bufnr,
    preserve_mappings = false
  })
end)

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lsp.skip_server_setup({'rust_analyzer'})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.diagnostic.config({
  update_in_insert = false,
  underline = {
    severity = {
      min = vim.diagnostic.severity.WARN
    }
  },
  virtual_text = {
    severity = {
      min = vim.diagnostic.severity.WARN
    }
  },
  severity_sort = true,
  float = {
    border = 'rounded',
    header = "",
  }
})

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      --[[vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
          local opts = {
            focusable = false,
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
            border = 'rounded',
            prefix = ' ',
            header = "",
          }
          vim.diagnostic.open_float(nil, opts)
        end
      })]]--

      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

vim.cmd([[ highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl ]])
vim.cmd([[ highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl ]])
vim.cmd([[ highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl ]])
vim.cmd([[ highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl ]])


