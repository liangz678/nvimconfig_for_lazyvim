return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<CR>"] = { "select_and_accept", "fallback" },
      },

      appearance = { nerd_font_variant = "mono" },

      completion = { documentation = { auto_show = false } },

      sources = { default = { "lsp", "path", "snippets", "buffer" } },
      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },

      cmdline = {
        enabled = true,
        keymap = { preset = "inherit" },
        completion = {
          menu = { auto_show = true },
        },
      },
    },
    opts_extend = { "sources.default" },
  },
}
