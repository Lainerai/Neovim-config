g = vim.g

g.coq_settings = {
  auto_start = 'shut-up',
  keymap = {
    pre_select = true
  },
  clients = {
    buffers = {
        enabled = true,
        weight_adjust = -1.9,
      },
    tree_sitter = {
      enabled = true,
      weight_adjust = -1.5
    },
    lsp = {
      enabled = true,
      weight_adjust = 1.5
    },
    snippets = {
      enabled = true,
      weight_adjust = 1.9
    },
  }
}
