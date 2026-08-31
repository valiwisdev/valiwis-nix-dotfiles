{ pkgs, unstablePkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = unstablePkgs.vscode;
    profiles.default = {
      extensions = with pkgs.vscode-marketplace; [
      ];

      userSettings = {
        "chat.viewSessions.orientation": "stacked",
        "docker.extension.enableComposeLanguageServer": false,
        "editor.accessibilitySupport": "on",
        "editor.fontFamily": "'JetBrains Mono', monospace",
        "editor.fontLigatures": true,
        "editor.fontSize": 18,
        "editor.lineHeight": 1.5,
        "files.autoSave": "afterDelay",
        "git.autofetch": true,
        "python.analysis.typeCheckingMode": "basic",
        "redhat.telemetry.enabled": false,
        "sonarlint.focusOnNewCode": false,
        "svelte.enable-ts-plugin": true,
        "terminal.integrated.env.osx": {
          "Q_NEW_SESSION": "1"
        },
        "terminal.integrated.fontFamily": "'JetBrainsMonoNL NFP', monospace",
        "terminal.integrated.fontSize": 16,
        "terminal.integrated.initialHint": false,
        "update.mode": "none",
        "workbench.activityBar.location": "top",
        "workbench.colorTheme": "Catppuccin Mocha",
        "workbench.sideBar.location": "right"
        }        
      ;
    };
  };
}
