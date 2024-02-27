require("pack")
require('nvim-autopairs').enable()
require("marks").setup()
require("mason").setup()
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}
local wk = require("which-key")
wk.register(mappings,opts)

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})
lsp.setup()

require("settings")
require("remap")
