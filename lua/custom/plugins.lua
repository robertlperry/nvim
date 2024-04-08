local plugins = {
  {
    "nathanalderson/yang.vim",
    ft = "yang"
  },
  {
    "elzr/vim-json",
    ft = "json",
  },
  {
    "glench/vim-jinja2-syntax",
    ft = "jinja2"
  },
  {
    "carbon-language/vim-carbon-lang",
    ft = "carbon"
  },
  {
    "TypeFox/yang-lsp",
    ft = "yang"
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "gopls",
        "jinja-lsp",
        "lua-language-server",
      }
    }
  }
}
return plugins
