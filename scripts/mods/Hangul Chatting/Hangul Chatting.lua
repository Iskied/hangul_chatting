local mod = get_mod("Hangul Chatting")

local batang_font_path = "fonts/mods/Hangul Chatting/KoBatang-Medium"
local arial = Fonts.arial
local chat_output_font = Fonts.chat_output_font

Fonts.kobatang_arial = arial
Fonts.kobatang_arial[1] = batang_font_path
Fonts.kobatang_chat_output_font = chat_output_font
Fonts.kobatang_chat_output_font[1] = batang_font_path

local init = true

mod:hook("ChatGui", "update", function(func, self, ...)
  if init then
    self.chat_input_widget.style.text.font_type = "kobatang_arial"
    self.chat_output_widget.style.text.font_type = "kobatang_chat_output_font"
    init = false
  end

  return func(self, ...)
end)

mod.on_unload = function()
  Fonts.kobatang_arial = arial
  Fonts.kobatang_chat_output_font = chat_output_font
end
