return {
    "saghen/blink.cmp",
    version = "*",
    opts = {
        keymap = { preset = "enter" },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono"
        },
        signature = { enabled = true },
        sources = {
            providers = {
                cmdline = {
                    enabled = false               }
            }
        }
    },
    opts_extend = { "sources.default" }
}
