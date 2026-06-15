local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier", "prettierd" },
    html = { "prettier", "prettierd" },
    javascript = { "prettier", "prettierd" },
    typescript = { "prettier", "prettierd" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    python = { "isort", "black" },
    tex = { "tex-fmt" },
    bib = { "bibtex-tidy" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
