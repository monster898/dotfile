if !exists("g:loaded_nvim_treesitter")
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require "nvim-treesitter.configs".setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "python",
    "yaml",
    "html",
    "scss",
    "java",
    "json",
    "c",
    "cpp",
    "vue",
    "css",
    "typescript",
    "javascript"
  },
  autotag = {
    enable = true
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF
