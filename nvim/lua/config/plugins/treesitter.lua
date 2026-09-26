return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    config = function()
      require("nvim-treesitter").install(require("config.parsers"))

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
        callback = function(args)
          local ft = args.match
          local lang = vim.treesitter.language.get_lang(ft)
          local subtype = ft:match("^eruby%.(.+)$")
          if subtype and subtype ~= "html" then
            lang = vim.treesitter.language.get_lang(subtype) or lang
          end
          local started = pcall(vim.treesitter.start, args.buf, lang)
          if started and ft ~= "ruby" then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
