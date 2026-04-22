{ username, ... }:

{
	system.defaults.CustomUserPreferences = {
		"com.apple.Terminal" = {
			"Default Window Settings" = "Catppuccin Mocha";
			"Startup Window Settings" = "Catppuccin Mocha";
		};
	};

	system.activationScripts.importCatppuccinTerminalTheme.text = ''
		set -euo pipefail

		THEME_NAME="Catppuccin Mocha"
		THEME_URL="https://raw.githubusercontent.com/catppuccin/Terminal.app/refs/heads/main/themes/catppuccin-mocha.terminal"
		THEME_FILE="/tmp/catppuccin-mocha.terminal"
		TERMINAL_PREFS="/Users/${username}/Library/Preferences/com.apple.Terminal.plist"

		if /usr/libexec/PlistBuddy -c "Print :'Window Settings':'$THEME_NAME'" "$TERMINAL_PREFS" >/dev/null 2>&1; then
			exit 0
		fi

		/usr/bin/curl -fsSL "$THEME_URL" -o "$THEME_FILE"

		# Importing a .terminal profile needs a GUI session.
		if /usr/bin/pgrep -x Dock >/dev/null 2>&1; then
			/usr/bin/su -l ${username} -c "/usr/bin/open '$THEME_FILE'"
		fi
	'';
}