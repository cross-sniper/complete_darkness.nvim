
local M = {}

function M.setup()
  -- Define the colors you want to use
  local colors = {
    bg = "#000000", -- this does not work if the user has a backgroud wallpaper
    fg = "#ffffff",
    red = "#ff0000",
    green = "#00ff00",
    blue = "#0000ff",
    yellow = "#ffff00",
    magenta = "#ff00ff",
    cyan = "#00ffff",
    white = "#ffffff",
    black = "#000000",
    i = "#242424"
  }

  -- Apply the colors to different highlight groups
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  vim.g.colors_name = "complete_darkness"
  vim.o.background = "black"
  local highlight = function(group, color)
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    vim.cmd(string.format("highlight %s %s %s %s", group, fg, bg, style))
  end

  highlight("Normal", { fg = colors.fg, bg = colors.bg })
  highlight("Insert", {fg=colors.fg, bg=colors.i})
  highlight("Comment", { fg = colors.green, style = "italic" })
  highlight("Constant", { fg = colors.cyan })
  highlight("String", { fg = colors.yellow })
  highlight("Identifier", { fg = colors.blue })
  highlight("Function", { fg = colors.magenta })
  highlight("Statement", { fg = colors.red })
  highlight("Type", { fg = colors.blue })
  highlight("Special", { fg = colors.magenta })
  highlight("Underlined", { fg = colors.blue, style = "underline" })
  highlight("Todo", { fg = colors.magenta, bg = colors.bg, style = "bold" })
end

return M
