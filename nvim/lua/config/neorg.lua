require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.syntax"] = {},
    ["core.concealer"] = {
      config = {
        dim_code_blocks = {
          conceal = false
        }
      }
    },
    ["core.completion"] = {
      config = {
        engine = "nvim-cmp"
      }
    },
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/notes"
        }
      }
    }
  }

}
