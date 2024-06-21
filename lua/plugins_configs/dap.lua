local function setup_vscode_js_debug (dap)
    dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
            command = "node",
            args = { vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}"},
        }
    }

    for _, language in ipairs {"typescript", "javascript"} do
        dap.configurations[language] = {
            {
                type = "pwa-node",
                request = "launch",
                name = "Launch file",
                program = "${file}",
                cwd = "${workspaceFolder}",
            },
        }
    end

end

local function setup_dap_ui_events(dap, dapui)
    dap.listeners.before.attach.dapui_config = function()
        dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
        dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
    end
end

local function add_key_maps()
   vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<enter>")
   vim.keymap.set("n", "<leader>dc", ":DapContinue<enter>")
end

return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
    },
    {
        "mfussenegger/nvim-dap",
        config = function ()
            local dap = require("dap")
            local dapui = require("dapui")

            add_key_maps()
            setup_vscode_js_debug(dap)

            -- Dap UI --
            dapui.setup()
            setup_dap_ui_events(dap, dapui)
        end
    }
}
