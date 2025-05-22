return {
  'neovim/nvim-lspconfig',
  event = 'VeryLazy',
  dependencies = {
    -- LSP management
    'mason-org/mason.nvim',
    'mason-org/mason-lspconfig.nvim',
    -- Auto-Install LSPs, linters, formatters, debuggers
    'WhoIsSethDaniel/mason-tool-installer.nvim',

    -- Status updates for LSP
    'j-hui/fidget.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      -- Install these LSPs automatically
      ensure_installed = {
        'bashls',
        'cssls',
        'html',
        'lua_ls',
        'jsonls',
        'lemminx',
        'marksman',
        'quick_lint_js',
        'yamlls',
        'basedpyright',
        'matlab_ls',
      }
    })
    require('mason-tool-installer').setup({
      -- Install these linters, formatters, debuggers automatically
      ensure_installed = {
        'black',
        'debugpy',
        'flake8',
        'isort',
        'mypy',
        'pylint',
      },
    })
  end
}
