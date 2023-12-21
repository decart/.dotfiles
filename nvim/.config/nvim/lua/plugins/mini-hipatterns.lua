return {
  "mini.hipatterns",
  opts = function()
    local hi = require("mini.hipatterns")
    return {
      -- custom LazyVim option to enable the tailwind integration
      tailwind = {
        enabled = true,
        ft = { "typescriptreact", "javascriptreact", "css", "javascript", "typescript", "html" },
        -- full: the whole css class will be highlighted
        -- compact: only the color will be highlighted
        style = "full",
      },
      highlighters = {
        fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
        hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
        todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
        note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
        hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),
      },
    }
  end,
}
