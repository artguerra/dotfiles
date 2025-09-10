return {
	"williamboman/mason.nvim",
  build = ":MasonUpdate",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"eslint",
				"html",
				"emmet_ls",
				"cssls",
				"lua_ls",
				"basedpyright",
				"clangd",
				"cmake",
				"rust_analyzer",
				"dockerls",
				"jsonls",
        "glsl_analyzer",
			},
      automatic_enable = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"clang-format",
				"pylint",
				"eslint_d",
				"cpplint",
				"cmakelint",
			},
		})
	end,
}
