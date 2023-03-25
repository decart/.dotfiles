require('nvim-web-devicons').setup({
  override = {
    [".babelrc"] = {
      icon = 'B',
      color = "#cbcb41",
      cterm_color = "185",
      name = "Babelrc",
    },
    ["svg"] = {
      icon = "",
      color = "#FFB13B",
      cterm_color = "215",
      name = "Svg",
    },
    ["dockerfile"] = {
      icon = "",
      color = "#458ee6",
      cterm_color = "68",
      name = "Dockerfile",
    },
  }
})
