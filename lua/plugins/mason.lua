return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "clangd",
                "cssls",
                "eslint",
                "html",
                "jsonls",
                "ts_ls",
                "tailwindcss",
                "lua_ls",
                "clangd",
                "cmake",
                "ruff",
                "lua_ls",
                "pyright",
            },
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
                "prettier",
                "stylua", -- lua formatter
                "pylint",
                "eslint_d",
                "clang-format",
                "cpplint",
                "cmakelang",
                "ruff",
                "black",
                "isort",
            },
        })
    end,
}
