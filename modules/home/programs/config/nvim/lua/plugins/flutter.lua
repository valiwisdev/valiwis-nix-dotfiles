return {{
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,

    dependencies = {"nvim-lua/plenary.nvim", 'stevearc/dressing.nvim'},

    config = true,

    opts = {
        ui = {
            border = "rounded"
        },

        lsp = {
            settings = {
                dart = {
                    enableSnippets = false,
                    completeFunctionCalls = false
                }
            }
        }
    },

    keys = {{
        "<leader>Fr",
        "<cmd>FlutterRun<cr>",
        desc = "Flutter Run"
    }, {
        "<leader>FR",
        "<cmd>FlutterReload<cr>",
        desc = "Flutter Reload"
    }, {
        "<leader>Fs",
        "<cmd>FlutterRestart<cr>",
        desc = "Flutter Restart"
    }, {
        "<leader>Fq",
        "<cmd>FlutterQuit<cr>",
        desc = "Flutter Quit"
    }, {
        "<leader>Fd",
        "<cmd>FlutterDevices<cr>",
        desc = "Flutter Devices"
    }, {
        "<leader>Fe",
        "<cmd>FlutterEmulators<cr>",
        desc = "Flutter Emulators"
    }, {
        "<leader>Fl",
        "<cmd>FlutterLogToggle<cr>",
        desc = "Flutter Logs"
    }, {
        "<leader>Fo",
        "<cmd>FlutterOutlineToggle<cr>",
        desc = "Flutter Outline"
    }, {
        "<leader>Fp",
        "<cmd>FlutterPubGet<cr>",
        desc = "Flutter Pub Get"
    }, {
        "<leader>FD",
        "<cmd>FlutterDevTools<cr>",
        desc = "Flutter DevTools"
    }}
}}
