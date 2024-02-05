return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    buffers = {
      follow_current_file = { enabled = true },
    },
    filesystem = {
      follow_current_file = { enabled = true },
      filtered_items = {
        force_visible_in_empty_folder = true,
      },
    },
  },
}
