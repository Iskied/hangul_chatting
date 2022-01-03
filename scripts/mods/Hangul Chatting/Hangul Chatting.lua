local mod = get_mod("Hangul Chatting")

local batang_font_path = "fonts/mods/Hangul Chatting/KoBatang-Medium"
local arial = Fonts.arial
local chat_output_font = Fonts.chat_output_font

local old_arial = arial[1]
local old_chat  = chat_output_font[1]

function mod.on_enabled()
  arial[1] = batang_font_path
  chat_output_font[1] = batang_font_path
end

function mod.on_disabled()
  arial[1] = old_arial
  chat_output_font[1] = old_chat
end

function mod.on_unload()
  mod.on_disabled()
end
