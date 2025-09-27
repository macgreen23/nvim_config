return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "off", -- or "basic", "strict", or "off"
            },
          },
        },
      },
    },
  },
}
