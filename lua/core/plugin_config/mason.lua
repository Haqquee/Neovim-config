require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { 
      "lua_ls", 
      "rust_analyzer",
      "cssls",
      "clangd",
      "tsserver",
      "tailwindcss",
      "pyright"
    },
    automatic_installation = true,
})
