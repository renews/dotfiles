return {
  "monaqa/dial.nvim",
  event = "VeryLazy",
  config = function()
    local augend = require("dial.augend")

    require("dial.config").augends:register_group({
      default = {
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.date.alias["%d/%m/%Y"],
        augend.constant.alias.bool,
        augend.semver.alias.semver,
        augend.constant.new({ elements = { "and", "or" }, word = true, cyclic = true }),
        augend.constant.new({ elements = { "&&", "||" }, cyclic = true }),
      },
      visual = {
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.constant.alias.alpha,
        augend.constant.alias.Alpha,
      },
    })

    require("dial.config").searchlist = {
      normal = { "default" },
      visual = { "visual", "default" },
      gnormal = { "default" },
      gvisual = { "visual", "default" },
      operator = { "default" },
    }
  end,
}
