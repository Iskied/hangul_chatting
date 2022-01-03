return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Hangul Chatting` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Hangul Chatting", {
			mod_script       = "scripts/mods/Hangul Chatting/Hangul Chatting",
			mod_data         = "scripts/mods/Hangul Chatting/Hangul Chatting_data",
			mod_localization = "scripts/mods/Hangul Chatting/Hangul Chatting_localization",
		})
	end,
	packages = {
		"resource_packages/Hangul Chatting/Hangul Chatting",
	},
}
