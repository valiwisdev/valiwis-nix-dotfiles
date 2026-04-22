{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        profiles.default = {
            extensions = with pkgs.vscode-marketplace; [
                alexisvt.flutter-snippets
                antfu.icons-carbon
                arcticicestudio.nord-visual-studio-code
                astro-build.astro-vscode
                batisteo.vscode-django
                bbenoist.nix
                bigonesystems.django
                bjarne.vantablack-omarchy
                bradlc.vscode-tailwindcss
                catppuccin.catppuccin-vsc
                catppuccin.catppuccin-vsc-icons
                catppuccin.catppuccin-vsc-pack
                dart-code.dart-code
                dart-code.flutter
                davidanson.vscode-markdownlint
                dbaeumer.vscode-eslint
                docker.docker
                dsznajder.es7-react-js-snippets
                esbenp.prettier-vscode
                fastapilabs.fastapi-vscode
                github.vscode-github-actions
                icrawl.discord-vscode
                jnoortheen.nix-ide
                kisstkondoros.vscode-gutter-preview
                midudev.better-svg
                miguelsolorio.symbols
                ms-azuretools.vscode-containers
                ms-azuretools.vscode-docker
                ms-python.autopep8
                ms-python.debugpy
                ms-python.isort
                ms-python.python
                ms-python.vscode-pylance
                ms-python.vscode-python-envs
                ms-toolsai.jupyter
                ms-toolsai.jupyter-keymap
                ms-toolsai.jupyter-renderers
                ms-toolsai.vscode-jupyter-cell-tags
                ms-toolsai.vscode-jupyter-slideshow
                ms-vscode-remote.remote-containers
                ms-vscode.vscode-typescript-next
                openai.chatgpt
                redhat.vscode-yaml
                shd101wyy.markdown-preview-enhanced
                sonarsource.sonarlint-vscode
                sst-dev.opencode
                svelte.svelte-vscode
                tomoki1207.pdf
                unifiedjs.vscode-mdx
                vue.volar
                xelad0m.jupyter-toc
            ];

            userSettings = {
                "workbench.colorTheme" = "Catppuccin Mocha";
                "update.mode" = "none";
                "sonarlint.focusOnNewCode" = false;
                "workbench.activityBar.location" = "top";
                "workbench.sideBar.location" = "right";
                "terminal.integrated.env.osx" = {
                    "Q_NEW_SESSION" = "1";
                };
                "editor.accessibilitySupport" = "on";
                "docker.extension.enableComposeLanguageServer" = false;
                "editor.fontSize" = 18;
                "editor.lineHeight" = 1.5;
                "editor.fontFamily" = "'JetBrains Mono', monospace";
                "editor.fontLigatures" = true;
                "terminal.integrated.fontFamily" = "'JetBrainsMonoNL NFP', monospace";
                "terminal.integrated.fontSize" = 16;
                "files.autoSave" = "afterDelay";
                "terminal.integrated.initialHint" = false;
                "redhat.telemetry.enabled" = false;
                "git.autofetch" = true;
                "svelte.enable-ts-plugin" = true;
                "python.analysis.typeCheckingMode" = "basic";
                "chat.viewSessions.orientation" = "stacked";
            };
        };
    };
}