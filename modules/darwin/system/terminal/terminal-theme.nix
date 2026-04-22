{ username, ... }:

{
	system.defaults.CustomUserPreferences = {
		"com.apple.Terminal" = {
			"Default Window Settings" = "catppuccin-mocha";
			"Startup Window Settings" = "catppuccin-mocha";
		};
	};

	system.activationScripts.importCatppuccinTerminalTheme.text = ''
		set -euo pipefail

		THEME_NAME="catppuccin-mocha"
		THEME_FILE="${./catppuccin-mocha.terminal}"
		TERMINAL_PREFS="/Users/${username}/Library/Preferences/com.apple.Terminal.plist"
		USER_UID="$(/usr/bin/id -u ${username})"

		if /usr/libexec/PlistBuddy -c "Print :'Window Settings':'$THEME_NAME'" "$TERMINAL_PREFS" >/dev/null 2>&1; then
			exit 0
		fi

		if /bin/launchctl print "gui/$USER_UID" >/dev/null 2>&1; then
			/bin/launchctl asuser "$USER_UID" /usr/bin/open -g "$THEME_FILE"
		elif /usr/bin/pgrep -x Dock >/dev/null 2>&1; then
			/usr/bin/su -l ${username} -c "/usr/bin/open -g '$THEME_FILE'"
		fi
	'';
}