require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "pyright",
  "vtsls",
  "tailwindcss",
  "clangd",
  "marksman",
  "vue_ls",
  "texlab",
}

local mason_path = vim.fn.stdpath "data" .. "/mason/packages"

local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = mason_path .. "/vue-language-server/node_modules/@vue/language-server",
  languages = { "vue" },
}

-- vim.lsp.config("ts_ls", {
--   init_options = {
--     plugins = { vue_plugin },
--   },
--
--   filetypes = {
--     "javascript",
--     "javascriptreact",
--     "typescript",
--     "typescriptreact",
--     "vue",
--   },
-- })
--
vim.lsp.config("vtsls", {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = { vue_plugin },
      },
    },
  },

  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
  },
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
