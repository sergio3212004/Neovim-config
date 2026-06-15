require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "pyright",
  "vtsls",
  "ts_ls",
  "tailwindcss",
  "clangd",
  "marksman",
  "vue_ls",
  "texlab",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
