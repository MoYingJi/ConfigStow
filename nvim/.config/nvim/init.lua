-- Lazy Nvim
require("config.lazy")

-- Nvim Config
require("config.nvim")

-- Plugins Configs

require('nvim-treesitter.configs').setup {
    auto_install = true
}
