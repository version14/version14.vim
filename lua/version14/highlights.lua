local M = {}

function M.get(p)
  local hl = {}

  local function h(group, opts)
    hl[group] = opts
  end

  -- ===== BASE VIM GROUPS =====

  h("Normal",          { fg = p.fg,  bg = p.bg })
  h("NormalNC",        { fg = p.fg,  bg = p.bg1 })
  h("NormalFloat",     { fg = p.fg,  bg = p.bg0 })
  h("FloatBorder",     { fg = p.bg3, bg = p.bg0 })
  h("FloatTitle",      { fg = p.fg,  bg = p.bg0, bold = true })
  h("FloatFooter",     { fg = p.fg1, bg = p.bg0 })

  h("Comment",         { fg = p.fg2, italic = true })

  h("Constant",        { fg = p.yellow })
  h("String",          { fg = p.green })
  h("Character",       { fg = p.green })
  h("Number",          { fg = p.yellow })
  h("Boolean",         { fg = p.yellow, italic = true })
  h("Float",           { fg = p.yellow })

  h("Identifier",      { fg = p.fg })
  h("Function",        { fg = p.accent })

  h("Statement",       { fg = p.accent2 })
  h("Conditional",     { fg = p.accent })
  h("Repeat",          { fg = p.accent })
  h("Label",           { fg = p.blue })
  h("Operator",        { fg = p.fg1 })
  h("Keyword",         { fg = p.accent2 })
  h("Exception",       { fg = p.red })

  h("PreProc",         { fg = p.yellow })
  h("Include",         { fg = p.fg1, italic = true })
  h("Define",          { fg = p.yellow })
  h("Macro",           { fg = p.accent2 })
  h("PreCondit",       { fg = p.yellow })

  h("Type",            { fg = p.blue })
  h("StorageClass",    { fg = p.accent2 })
  h("Structure",       { fg = p.blue })
  h("Typedef",         { fg = p.blue })

  h("Special",         { fg = p.accent2 })
  h("SpecialChar",     { fg = p.accent2 })
  h("Tag",             { fg = p.blue })
  h("Delimiter",       { fg = p.fg2 })
  h("SpecialComment",  { fg = p.fg2, italic = true })
  h("Debug",           { fg = p.red })

  h("Underlined",      { underline = true })
  h("Ignore",          { fg = p.bg2 })
  h("Error",           { fg = p.red })
  h("Todo",            { fg = p.accent, bold = true })

  -- UI elements

  h("ColorColumn",     { bg = p.bg2 })
  h("Conceal",         { fg = p.fg3 })
  h("Cursor",          { fg = p.bg, bg = p.accent })
  h("CursorIM",        { fg = p.bg, bg = p.accent })
  h("lCursor",         { fg = p.bg, bg = p.accent })
  h("CursorColumn",    { bg = p.bg2 })
  h("CursorLine",      { bg = p.active_line })
  h("CursorLineFold",  { fg = p.fg2 })
  h("CursorLineSign",  { bg = p.bg })

  h("Directory",       { fg = p.blue })

  h("DiffAdd",         { bg = p.diff_add })
  h("DiffChange",      { bg = p.diff_change })
  h("DiffDelete",      { fg = p.git_delete, bg = p.diff_delete })
  h("DiffText",        { bg = p.diff_change, bold = true })

  h("EndOfBuffer",     { fg = p.bg2 })
  h("ErrorMsg",        { fg = p.red })

  h("VertSplit",       { fg = p.bg3 })
  h("WinSeparator",    { fg = p.bg3 })
  h("WinBar",          { fg = p.fg1, bg = p.bg })
  h("WinBarNC",        { fg = p.fg2, bg = p.bg1 })

  h("Folded",          { fg = p.fg2, bg = p.bg0 })
  h("FoldColumn",      { fg = p.fg2, bg = p.bg0 })

  h("SignColumn",      { fg = p.fg2, bg = p.bg })
  h("SignColumnSB",    { fg = p.fg2, bg = p.bg0 })

  h("IncSearch",       { fg = p.bg, bg = p.accent })
  h("Substitute",      { fg = p.bg, bg = p.yellow })
  h("Search",          { fg = p.bg, bg = p.accent2 })
  h("CurSearch",       { link = "IncSearch" })

  h("LineNr",          { fg = p.fg3 })
  h("LineNrAbove",     { fg = p.fg3 })
  h("LineNrBelow",     { fg = p.fg3 })
  h("CursorLineNr",    { fg = p.accent, bold = true })

  h("MatchParen",      { fg = p.accent, bg = p.bracket_bg, bold = true })

  h("ModeMsg",         { fg = p.fg, bold = true })
  h("MsgArea",         { fg = p.fg })
  h("MsgSeparator",    { fg = p.bg3 })
  h("MoreMsg",         { fg = p.green })
  h("NonText",         { fg = p.fg3 })

  h("Pmenu",           { fg = p.fg,  bg = p.bg0 })
  h("PmenuSel",        { fg = p.bg,  bg = p.accent })
  h("PmenuKind",       { fg = p.blue, bg = p.bg0 })
  h("PmenuKindSel",    { fg = p.bg,  bg = p.accent })
  h("PmenuExtra",      { fg = p.fg1, bg = p.bg0 })
  h("PmenuExtraSel",   { fg = p.bg,  bg = p.accent })
  h("PmenuSbar",       { bg = p.bg2 })
  h("PmenuThumb",      { bg = p.bg3 })

  h("Question",        { fg = p.green })
  h("QuickFixLine",    { bg = p.selection })

  h("SpecialKey",      { fg = p.fg3 })

  h("SpellBad",        { sp = p.red,    undercurl = true })
  h("SpellCap",        { sp = p.blue,   undercurl = true })
  h("SpellLocal",      { sp = p.green,  undercurl = true })
  h("SpellRare",       { sp = p.yellow, undercurl = true })

  h("StatusLine",      { fg = p.fg,  bg = p.bg_dark })
  h("StatusLineNC",    { fg = p.fg2, bg = p.bg_dark })

  h("TabLine",         { fg = p.fg2, bg = p.bg_dark })
  h("TabLineFill",     { bg = p.bg_dark })
  h("TabLineSel",      { fg = p.fg,  bg = p.bg })

  h("Title",           { fg = p.fg, bold = true })
  h("Visual",          { bg = p.selection })
  h("VisualNOS",       { bg = p.selection })
  h("WarningMsg",      { fg = p.yellow })
  h("Whitespace",      { fg = p.fg3 })
  h("WildMenu",        { fg = p.bg, bg = p.accent })

  -- ===== TREESITTER =====

  h("@variable",                    { fg = p.fg })
  h("@variable.builtin",            { fg = p.red })
  h("@variable.parameter",          { fg = p.fg })
  h("@variable.parameter.builtin",  { fg = p.red })
  h("@variable.member",             { fg = p.blue })

  h("@constant",                    { fg = p.yellow })
  h("@constant.builtin",            { fg = p.yellow })
  h("@constant.macro",              { fg = p.yellow })

  h("@module",                      { fg = p.fg1, italic = true })
  h("@module.builtin",              { fg = p.red, italic = true })
  h("@label",                       { fg = p.blue })

  h("@string",                      { fg = p.green })
  h("@string.regexp",               { fg = p.yellow })
  h("@string.escape",               { fg = p.accent2 })
  h("@string.special",              { fg = p.accent2 })
  h("@string.special.path",         { fg = p.blue, italic = true })
  h("@string.special.url",          { fg = p.blue, italic = true })
  h("@string.special.symbol",       { fg = p.accent2 })

  h("@character",                   { fg = p.green })
  h("@character.special",           { fg = p.accent2 })

  h("@boolean",                     { fg = p.yellow, italic = true })
  h("@number",                      { fg = p.yellow })
  h("@number.float",                { fg = p.yellow })

  h("@type",                        { fg = p.blue })
  h("@type.builtin",                { fg = p.blue, italic = true })
  h("@type.definition",             { fg = p.blue })

  h("@attribute",                   { fg = p.yellow })
  h("@attribute.builtin",           { fg = p.yellow })
  h("@property",                    { fg = p.fg1 })

  h("@function",                    { fg = p.accent })
  h("@function.builtin",            { fg = p.red })
  h("@function.call",               { fg = p.accent })
  h("@function.macro",              { fg = p.accent2 })
  h("@function.method",             { fg = p.accent })
  h("@function.method.call",        { fg = p.accent })

  h("@constructor",                 { fg = p.accent2 })
  h("@operator",                    { fg = p.fg1 })

  h("@keyword",                     { fg = p.accent2 })
  h("@keyword.modifier",            { fg = p.accent2 })
  h("@keyword.type",                { fg = p.accent2 })
  h("@keyword.function",            { fg = p.accent2 })
  h("@keyword.operator",            { fg = p.accent2 })
  h("@keyword.import",              { fg = p.fg1, italic = true })
  h("@keyword.export",              { fg = p.fg1, italic = true })
  h("@keyword.return",              { fg = p.accent })
  h("@keyword.repeat",              { fg = p.accent })
  h("@keyword.coroutine",           { fg = p.accent })
  h("@keyword.conditional",         { fg = p.accent })
  h("@keyword.conditional.ternary", { fg = p.accent })
  h("@keyword.exception",           { fg = p.red })
  h("@keyword.debug",               { fg = p.red })
  h("@keyword.directive",           { fg = p.yellow })
  h("@keyword.directive.define",    { fg = p.yellow })

  h("@punctuation.delimiter",       { fg = p.fg2 })
  h("@punctuation.bracket",         { fg = p.fg2 })
  h("@punctuation.special",         { fg = p.fg1 })

  h("@comment",                     { fg = p.fg2, italic = true })
  h("@comment.documentation",       { fg = p.fg1, italic = true })
  h("@comment.error",               { fg = p.red,     italic = true })
  h("@comment.warning",             { fg = p.yellow,  italic = true })
  h("@comment.hint",                { fg = p.blue,    italic = true })
  h("@comment.todo",                { fg = p.accent,  italic = true })
  h("@comment.note",                { fg = p.accent2, italic = true })

  h("@tag",                         { fg = p.blue })
  h("@tag.builtin",                 { fg = p.blue })
  h("@tag.attribute",               { fg = p.fg1, italic = true })
  h("@tag.delimiter",               { fg = p.fg2 })

  h("@diff.plus",                   { fg = p.git_add })
  h("@diff.minus",                  { fg = p.git_delete })
  h("@diff.delta",                  { fg = p.git_change })

  h("@markup.strong",               { bold = true })
  h("@markup.italic",               { italic = true })
  h("@markup.strikethrough",        { strikethrough = true })
  h("@markup.underline",            { underline = true })
  h("@markup.heading",              { fg = p.fg,      bold = true })
  h("@markup.heading.1",            { fg = p.accent,  bold = true })
  h("@markup.heading.2",            { fg = p.blue,    bold = true })
  h("@markup.heading.3",            { fg = p.green,   bold = true })
  h("@markup.heading.4",            { fg = p.yellow,  bold = true })
  h("@markup.heading.5",            { fg = p.red,     bold = true })
  h("@markup.heading.6",            { fg = p.fg1,     bold = true })
  h("@markup.link",                 { fg = p.accent })
  h("@markup.link.label",           { fg = p.accent })
  h("@markup.link.url",             { fg = p.blue, italic = true })
  h("@markup.raw",                  { fg = p.green })
  h("@markup.raw.block",            { fg = p.green })
  h("@markup.list",                 { fg = p.green })
  h("@markup.list.checked",         { fg = p.green })
  h("@markup.list.unchecked",       { fg = p.fg2 })

  -- ===== LSP SEMANTIC TOKENS =====

  h("@lsp.type.class",              { link = "@type" })
  h("@lsp.type.decorator",          { link = "@attribute" })
  h("@lsp.type.enum",               { link = "@type" })
  h("@lsp.type.enumMember",         { link = "@constant" })
  h("@lsp.type.function",           { link = "@function" })
  h("@lsp.type.interface",          { fg = p.blue, italic = true })
  h("@lsp.type.macro",              { link = "@function.macro" })
  h("@lsp.type.method",             { link = "@function.method" })
  h("@lsp.type.namespace",          { link = "@module" })
  h("@lsp.type.parameter",          { link = "@variable.parameter" })
  h("@lsp.type.property",           { link = "@property" })
  h("@lsp.type.struct",             { link = "@type" })
  h("@lsp.type.type",               { link = "@type" })
  h("@lsp.type.typeParameter",      { fg = p.blue, italic = true })
  h("@lsp.type.variable",           { link = "@variable" })
  h("@lsp.mod.deprecated",          { strikethrough = true })
  h("@lsp.mod.readonly",            { fg = p.yellow })

  -- ===== DIAGNOSTICS =====

  h("DiagnosticError",              { fg = p.red })
  h("DiagnosticWarn",               { fg = p.yellow })
  h("DiagnosticInfo",               { fg = p.blue })
  h("DiagnosticHint",               { fg = p.fg3 })
  h("DiagnosticOk",                 { fg = p.green })

  h("DiagnosticVirtualTextError",   { fg = p.red,    italic = true })
  h("DiagnosticVirtualTextWarn",    { fg = p.yellow, italic = true })
  h("DiagnosticVirtualTextInfo",    { fg = p.blue,   italic = true })
  h("DiagnosticVirtualTextHint",    { fg = p.fg3,    italic = true })

  h("DiagnosticUnderlineError",     { sp = p.red,    undercurl = true })
  h("DiagnosticUnderlineWarn",      { sp = p.yellow, undercurl = true })
  h("DiagnosticUnderlineInfo",      { sp = p.blue,   undercurl = true })
  h("DiagnosticUnderlineHint",      { sp = p.fg3,    undercurl = true })

  h("DiagnosticFloatingError",      { fg = p.red })
  h("DiagnosticFloatingWarn",       { fg = p.yellow })
  h("DiagnosticFloatingInfo",       { fg = p.blue })
  h("DiagnosticFloatingHint",       { fg = p.fg3 })

  h("DiagnosticSignError",          { fg = p.red })
  h("DiagnosticSignWarn",           { fg = p.yellow })
  h("DiagnosticSignInfo",           { fg = p.blue })
  h("DiagnosticSignHint",           { fg = p.fg3 })

  h("DiagnosticDeprecated",         { sp = p.fg3, strikethrough = true })
  h("DiagnosticUnnecessary",        { fg = p.fg3 })

  -- ===== LSP REFERENCES =====

  h("LspReferenceText",             { bg = p.read_bg })
  h("LspReferenceRead",             { bg = p.read_bg })
  h("LspReferenceWrite",            { bg = p.write_bg })
  h("LspSignatureActiveParameter",  { fg = p.accent, underline = true })
  h("LspInlayHint",                 { fg = p.fg3, italic = true })
  h("LspCodeLens",                  { fg = p.fg3 })
  h("LspCodeLensSeparator",         { fg = p.bg3 })

  -- ===== GITSIGNS =====

  h("GitSignsAdd",                  { fg = p.git_add })
  h("GitSignsChange",               { fg = p.git_change })
  h("GitSignsDelete",               { fg = p.git_delete })
  h("GitSignsTopdelete",            { fg = p.git_delete })
  h("GitSignsChangedelete",         { fg = p.git_change })
  h("GitSignsUntracked",            { fg = p.git_add })
  h("GitSignsAddNr",                { fg = p.git_add })
  h("GitSignsChangeNr",             { fg = p.git_change })
  h("GitSignsDeleteNr",             { fg = p.git_delete })
  h("GitSignsTopdeleteNr",          { fg = p.git_delete })
  h("GitSignsChangedeleteNr",       { fg = p.git_change })
  h("GitSignsAddLn",                { bg = p.diff_add })
  h("GitSignsChangeLn",             { bg = p.diff_change })
  h("GitSignsCurrentLineBlame",     { fg = p.fg3, italic = true })
  h("GitSignsAddInline",            { bg = p.diff_add })
  h("GitSignsChangeInline",         { bg = p.diff_change })
  h("GitSignsDeleteInline",         { bg = p.diff_delete })

  -- ===== TELESCOPE =====

  h("TelescopeBorder",              { fg = p.bg3,    bg = p.bg0 })
  h("TelescopeNormal",              { fg = p.fg,     bg = p.bg0 })
  h("TelescopePromptBorder",        { fg = p.accent, bg = p.bg2 })
  h("TelescopePromptNormal",        { fg = p.fg,     bg = p.bg2 })
  h("TelescopePromptPrefix",        { fg = p.accent, bg = p.bg2 })
  h("TelescopePromptCounter",       { fg = p.fg1,    bg = p.bg2 })
  h("TelescopePromptTitle",         { fg = p.bg,     bg = p.accent, bold = true })
  h("TelescopePreviewBorder",       { fg = p.bg3,    bg = p.bg0 })
  h("TelescopePreviewTitle",        { fg = p.bg,     bg = p.blue,   bold = true })
  h("TelescopePreviewNormal",       { fg = p.fg,     bg = p.bg0 })
  h("TelescopeResultsBorder",       { fg = p.bg3,    bg = p.bg0 })
  h("TelescopeResultsTitle",        { fg = p.fg1,    bg = p.bg0 })
  h("TelescopeResultsNormal",       { fg = p.fg,     bg = p.bg0 })
  h("TelescopeSelection",           { fg = p.fg,     bg = p.bg2 })
  h("TelescopeSelectionCaret",      { fg = p.accent, bg = p.bg2 })
  h("TelescopeMultiSelection",      { fg = p.accent2 })
  h("TelescopeMultiIcon",           { fg = p.accent2 })
  h("TelescopeMatching",            { fg = p.accent, bold = true })

  -- ===== INDENT-BLANKLINE =====

  -- ibl v3
  h("IblIndent",                    { fg = p.bg2 })
  h("IblScope",                     { fg = p.bg3 })
  h("IblWhitespace",                { fg = p.bg2 })
  -- ibl v2 (legacy)
  h("IndentBlanklineChar",               { fg = p.bg2 })
  h("IndentBlanklineContextChar",        { fg = p.bg3 })
  h("IndentBlanklineSpaceChar",          { fg = p.bg2 })
  h("IndentBlanklineSpaceCharBlankline", { fg = p.bg2 })

  return hl
end

return M
