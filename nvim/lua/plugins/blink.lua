return {
  "saghen/blink.cmp",

  version = "1.*",

  opts = {
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    keymap = { preset = "super-tab" },

    appearance = {
      -- "mono" (default) for "Nerd Font Mono" or "normal" for "Nerd Font"
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = "normal"
    },

    sources = {
      default = { "lsp", "path", "buffer" },
      per_filetype = {
        glsl = {},   -- no sources for *.glsl
        vert = {},   -- no sources for *.vert
        frag = {},   -- no sources for *.frag
        geom = {},   -- no sources for *.geom
        comp = {},   -- no sources for *.comp
        tesc = {},   -- no sources for *.tesc
        tese = {},   -- no sources for *.tese
      },
    },

    signature = { enabled = true }
  },
  opts_extend = { "sources.default" }
}
