local M = {}

-- All blended values are pre-computed: color@alpha blended onto the editor bg.
-- Dark editor bg: #14171B, Black editor bg: #000000, Light editor bg: #E8EAED

M.dark = {
  -- Backgrounds (darkest → lightest)
  bg_dark  = "#08090A",  -- status/title bar
  bg       = "#14171B",  -- editor
  bg0      = "#0E1012",  -- panel / float
  bg1      = "#1A1E23",  -- main window (non-editor)
  bg2      = "#23262B",  -- element hover / border
  bg3      = "#2E3238",  -- element active / border variant
  bg4      = "#505560",  -- disabled

  -- Foregrounds
  fg       = "#F2F4F6",
  fg1      = "#9CA0A6",
  fg2      = "#6E737A",
  fg3      = "#505560",

  -- Accent colors (from the Zed theme palette)
  accent   = "#D2FF3A",  -- lime (primary)
  accent2  = "#B8E625",  -- yellow-lime (secondary)
  blue     = "#6FB1FF",
  green    = "#4ADE80",
  yellow   = "#FFB347",
  red      = "#FF5C5C",

  -- Pre-blended composite colors (alpha blended onto bg = #14171B)
  selection   = "#323B20",  -- D2FF3A @ 16%
  active_line = "#1B1E22",  -- F2F4F6 @ 3%
  bracket_bg  = "#262D1E",  -- D2FF3A @ 9%
  read_bg     = "#25282C",  -- 9CA0A6 @ 12.5%
  write_bg    = "#2E3135",  -- 9CA0A6 @ 19%
  diff_add    = "#1E3128",  -- 4ADE80 @ 13%
  diff_change = "#1D2B3A",  -- 6FB1FF @ 13%
  diff_delete = "#341F20",  -- FF5C5C @ 13%

  git_add     = "#4ADE80",
  git_change  = "#6FB1FF",
  git_delete  = "#FF5C5C",
}

M.black = {
  -- Backgrounds (fully dark)
  bg_dark  = "#000000",  -- status/title bar
  bg       = "#000000",  -- editor
  bg0      = "#080808",  -- panel / float
  bg1      = "#0D0D0D",  -- main window (non-editor)
  bg2      = "#181818",  -- element hover / border
  bg3      = "#222222",  -- element active / border variant
  bg4      = "#505560",  -- disabled

  -- Foregrounds (identical to dark)
  fg       = "#F2F4F6",
  fg1      = "#9CA0A6",
  fg2      = "#6E737A",
  fg3      = "#505560",

  -- Accent colors (identical to dark)
  accent   = "#D2FF3A",
  accent2  = "#B8E625",
  blue     = "#6FB1FF",
  green    = "#4ADE80",
  yellow   = "#FFB347",
  red      = "#FF5C5C",

  -- Pre-blended composite colors (alpha blended onto bg = #000000)
  selection   = "#212909",  -- D2FF3A @ 16%
  active_line = "#070707",  -- F2F4F6 @ 3%
  bracket_bg  = "#131705",  -- D2FF3A @ 9%
  read_bg     = "#141415",  -- 9CA0A6 @ 12.5%
  write_bg    = "#1E1F20",  -- 9CA0A6 @ 19%
  diff_add    = "#0A1D11",  -- 4ADE80 @ 13%
  diff_change = "#0F1721",  -- 6FB1FF @ 13%
  diff_delete = "#210C0C",  -- FF5C5C @ 13%

  git_add     = "#4ADE80",
  git_change  = "#6FB1FF",
  git_delete  = "#FF5C5C",
}

M.light = {
  -- Backgrounds (lightest → darkest)
  bg_dark  = "#F7F8F9",  -- status/title bar
  bg       = "#E8EAED",  -- editor
  bg0      = "#EFF1F3",  -- panel / float
  bg1      = "#F7F8F9",  -- main window (non-editor)
  bg2      = "#D0D4D9",  -- element hover / border
  bg3      = "#BFC4CA",  -- element active / border variant
  bg4      = "#767B82",  -- disabled

  -- Foregrounds
  fg       = "#0D0F11",
  fg1      = "#555A61",
  fg2      = "#636870",
  fg3      = "#767B82",

  -- Accent colors (darker variants for legibility on light bg)
  accent   = "#4E6600",  -- dark olive (primary)
  accent2  = "#566E0C",  -- olive-green (secondary)
  blue     = "#1B4FCC",
  green    = "#166534",
  yellow   = "#92400E",
  red      = "#B91C1C",

  -- Pre-blended composite colors (alpha blended onto bg = #E8EAED)
  selection   = "#D0D6C8",  -- 4D6B00 @ 16%
  active_line = "#E2E4E8",  -- E0E3E7 @ 80%
  bracket_bg  = "#D3D9CE",  -- 4D6B00 @ 13%
  read_bg     = "#D4D7DA",  -- 555A61 @ 13%
  write_bg    = "#CBCDD1",  -- 555A61 @ 20%
  diff_add    = "#CDD9D5",  -- 166534 @ 13%
  diff_change = "#CDD6E9",  -- 1B4FCC @ 13%
  diff_delete = "#E2CFD2",  -- B91C1C @ 13%

  git_add     = "#166534",
  git_change  = "#1B4FCC",
  git_delete  = "#B91C1C",
}

return M
