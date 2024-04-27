return {
  { "echasnovski/mini.pairs", enabled = false },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {
      check_ts = true,
      ts_config = { java = false },
      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0,
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
      },
    },
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}
