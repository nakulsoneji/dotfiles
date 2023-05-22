require("bufferline").setup({
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    indicator = {
      style = "icon"
    },
    --[[diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,]]--
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        padding = 1,
        separator = false
      }
    },
    tab_size = 20,
    enforce_regular_tabs = true,
    --[[hover = {
      enabled = true,
      reveal = {'close'}
    },]]--
  },

})
