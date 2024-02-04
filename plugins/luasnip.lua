return {
  "L3MON4D3/LuaSnip",
  -- override default astro config
  config = function(_, opts)
    -- copied from astro
    if opts then require("luasnip").config.setup(opts) end
    vim.tbl_map(function(type) require("luasnip.loaders.from_" .. type).lazy_load() end, {
      -- "vscode"
      "snipmate",
      "lua",
    }) -- end copied section

    -- enable friendlysnip tsdoc snippets
    vim.tbl_map(
      function(filetype) require("luasnip").filetype_extend(filetype, { "tsdoc" }) end,
      { "typescript", "typescriptreact" }
    )

    -- disable snippets from friendlysnip
    require("luasnip.loaders.from_vscode").lazy_load {
      exclude = { "html", "css" },
    }

    -- load custom snippets
    require("luasnip.loaders.from_vscode").lazy_load {
      paths = { "~/.config/astronvim/lua/user/snippets" },
    }
  end,
}
