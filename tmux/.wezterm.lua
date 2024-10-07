local wezterm = require 'wezterm'

function ReduceTitle(title)
    title = title:gsub("\\", "/")
    title = title:split("/")
    return title[#title]
end

return {
    color_scheme = "rose-pine-moon",
    background = {
        {
            source = {
                File = "/Users/lucasfellipe/www/wallpapers/anime/cyber_girl.jpg",
            },
            hsb = { brightness = 0.04 },
        },
    },
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW",
    adjust_window_size_when_changing_font_size = false,
    -- enable_tab_bar = false,
    -- hide_tab_bar_if_only_one_tab = true,
    font = wezterm.font("Fira Mono", { italic = false }),
    scrollback_lines = 30000,
    window_close_confirmation = "NeverPrompt",
    window_padding = {
        bottom = 0,
    },
    font_size = 14.5,
    initial_cols = 100,
    initial_rows = 30,
    max_fps = 165,
    keys = {
        {
            key = "w",
            mods = "CMD",
            action = wezterm.action.CloseCurrentTab { confirm = false },
        }
    }
}
