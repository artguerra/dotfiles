return {
  "nvim-tree/nvim-web-devicons",
  opts = {},
  config = function ()
    local devicons = require("nvim-web-devicons")

    devicons.set_icon({
      glsl = { icon = "󰆧", color = "#89b4fa", name = "glsl" },
      vert = { icon = "󰕣", color = "#fab387", name = "vert" },
      frag = { icon = "󰵲", color = "#94e2d5", name = "frag" },
      geom = { icon = "󰆧", color = "#f38ba8", name = "geom" },
      comp = { icon = "", color = "#a6e3a1", name = "comp" },
      tesc = { icon = "󱗿", color = "#cba6f7", name = "tesc" },
      tese = { icon = "󱗿", color = "#cba6f7", name = "tese" },
    })
  end,
}
