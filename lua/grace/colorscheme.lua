local colors = {
	-- PATCH_OPEN
	Normal = { fg = "#FAF0E5", bg = "#131211" },
	Debug = { link = "Normal" },
	Identifier = { link = "Normal" },
	NormalNC = { link = "Normal" },
	Operator = { link = "Normal" },
	Boolean = { fg = "#D97373" },
	["@boolean"] = { link = "Boolean" },
	Character = { fg = "#BB5FCE" },
	ColorColumn = { bg = "#333333" },
	Comment = { fg = "#808080" },
	Conceal = { fg = "#FAF0E5", bg = "#36454F" },
	Conditional = { fg = "#D99059", italic = true },
	Exception = { link = "Conditional" },
	Constant = { fg = "#D97373", bold = true },
	CurSearch = { fg = "#333333", bg = "#D99059" },
	Cursor = { fg = "#808080", bg = "#DBDBDB" },
	Delimiter = { fg = "#D97373" },
	DiagnosticError = { fg = "#D34562" },
	DiagnosticFloatingError = { fg = "#D34562", bg = "#333333" },
	DiagnosticFloatingHint = { fg = "#A7C973", bg = "#333333" },
	DiagnosticFloatingOk = { link = "DiagnosticFloatingHint" },
	DiagnosticFloatingInfo = { fg = "#6A9FDC", bg = "#333333" },
	DiagnosticFloatingWarn = { fg = "#F0C775", bg = "#333333" },
	DiagnosticHint = { fg = "#A7C973" },
	DiagnosticOk = { link = "DiagnosticHint" },
	DiagnosticInfo = { fg = "#6A9FDC" },
	DiagnosticSignError = { fg = "#D34562" },
	DiagnosticSignHint = { fg = "#A7C973" },
	DiagnosticSignOk = { link = "DiagnosticSignHint" },
	DiagnosticSignInfo = { fg = "#6A9FDC" },
	DiagnosticSignWarn = { fg = "#F0C775" },
	DiagnosticUnderlineError = { sp = "#D34562", undercurl = true },
	DiagnosticUnderlineHint = { sp = "#A7C973", undercurl = true },
	DiagnosticUnderlineOk = { link = "DiagnosticUnderlineHint" },
	DiagnosticUnderlineInfo = { sp = "#6A9FDC", undercurl = true },
	DiagnosticUnderlineWarn = { sp = "#F0C775", undercurl = true },
	DiagnosticVirtualTextError = { fg = "#D34562" },
	DiagnosticVirtualTextHint = { fg = "#A7C973" },
	DiagnosticVirtualTextOk = { link = "DiagnosticVirtualTextHint" },
	DiagnosticVirtualTextInfo = { fg = "#6A9FDC" },
	DiagnosticVirtualTextWarn = { fg = "#F0C775" },
	DiagnosticWarn = { fg = "#F0C775" },
	DiffAdd = { fg = "#6DB072" },
	DiffChange = { fg = "#89BEB7" },
	DiffDelete = { fg = "#D34562" },
	Directory = { fg = "#A2CBF1" },
	Error = { fg = "#D34562" },
	ErrorMsg = { fg = "#D34562" },
	Float = { fg = "#89BEB7" },
	["@float"] = { link = "Float" },
	FloatBorder = { fg = "#FAF0E5" },
	FloatTitle = { fg = "#FAF0E5" },
	Folded = { bg = "#333333" },
	Function = { fg = "#F0C775" },
	["@function"] = { link = "Function" },
	Ignore = {},
	Include = { fg = "#BB5FCE" },
	Define = { link = "Include" },
	Keyword = { fg = "#D97373", italic = true },
	Label = { fg = "#BB5FCE" },
	PreProc = { link = "Label" },
	LineNr = { fg = "#DBDBDB" },
	LineNrAbove = { fg = "#36454F" },
	LineNrBelow = { fg = "#36454F" },
	LspReferenceRead = { underline = true },
	LspReferenceText = { underline = true },
	LspReferenceWrite = { underline = true },
	LspSignatureActiveParameter = { fg = "#D34562", bg = "#DBDBDB" },
	Macro = { fg = "#D34562" },
	MatchParen = { fg = "#BB5FCE" },
	MiniDiffSignAdd = { fg = "#A7C973" },
	MiniDiffSignChange = { fg = "#5E8D87" },
	MiniDiffSignDelete = { fg = "#D34562" },
	MiniFilesBorder = { fg = "#DBDBDB", bg = "none" },
	MiniFilesCursorLine = { fg = "#BB5FCE", bg = "none" },
	MiniFilesDirectory = { fg = "#DBDBDB", bg = "none" },
	MiniFilesFile = { fg = "#DBDBDB", bg = "none" },
	MiniFilesNormal = { fg = "#DBDBDB", bg = "none" },
	MiniFilesTitle = { fg = "#DBDBDB", bg = "none" },
	MiniFilesTitleFocused = { fg = "#131211", bg = "#F0C775" },
	MiniNotifyBorder = { fg = "#DBDBDB", bg = "none" },
	MiniNotifyLspProgress = { fg = "#DBDBDB", bg = "none" },
	MiniNotifyNormal = { fg = "#DBDBDB", bg = "none" },
	MiniNotifyTitle = { fg = "#DBDBDB", bg = "none" },
	MiniStatuslineDevinfo = { bg = "#808080" },
	MiniStatuslineFilename = { fg = "#DBDBDB", bg = "#333333" },
	MiniStatuslineModeCommand = { fg = "#333333", bg = "#5E8D87" },
	MiniStatuslineModeInsert = { fg = "#DBDBDB", bg = "#333333" },
	MiniStatuslineModeNormal = { fg = "#131211", bg = "#6DB072" },
	MiniStatuslineModeReplace = { fg = "#FAF0E5", bg = "#D97373" },
	MiniStatuslineModeVisual = { fg = "#FAF0E5", bg = "#BB5FCE" },
	ModeMsg = { fg = "#A7C973" },
	MsgSeparator = { fg = "#36454F" },
	NormalFloat = { fg = "#FAF0E5", bg = "#333333" },
	Number = { fg = "#89BEB7" },
	["@number"] = { link = "Number" },
	Pmenu = { fg = "#FAF0E5", bg = "#333333" },
	PmenuKind = { link = "Pmenu" },
	PmenuSbar = { fg = "#DBDBDB", bg = "#36454F" },
	PmenuSel = { fg = "#BB5FCE" },
	PmenuKindSel = { link = "PmenuSel" },
	PmenuThumb = { bg = "#DBDBDB" },
	PreCondit = { fg = "#BB5FCE" },
	QuickFixLine = { fg = "#BB5FCE", bg = "#36454F" },
	Repeat = { fg = "#D99059", italic = true },
	Search = { fg = "#333333", bg = "#D99059" },
	SignColumn = { fg = "#DBDBDB", bg = "#36454F" },
	Special = { fg = "#89BEB7" },
	SpecialChar = { fg = "#D99059" },
	SpecialComment = { fg = "#6DB072" },
	Statement = { fg = "#D99059" },
	StatusLine = { fg = "#131211", bg = "#DBDBDB" },
	StorageClass = { fg = "#D97373" },
	String = { fg = "#A7C973" },
	Structure = { fg = "#D99059" },
	Substitute = { fg = "#333333", bg = "#D99059" },
	TabLine = { fg = "#808080", bg = "#333333" },
	TabLineFill = { bg = "#333333" },
	TabLineSel = { bg = "#808080" },
	Tag = { fg = "#D34562" },
	Title = { fg = "#FAF0E5" },
	Todo = { fg = "#131211", bg = "#D99059" },
	Type = { fg = "#D99059" },
	Typedef = { fg = "#BB5FCE" },
	Underlined = { underline = true },
	Visual = { fg = "#DBDBDB", bg = "#333333" },
	WarningMsg = { fg = "#F0C775" },
	["@character"] = { fg = "#BB5FCE" },
	["@character.special"] = {},
	["@comment"] = { fg = "#808080" },
	["@constant"] = { fg = "#D97373" },
	["@constant.builtin"] = { fg = "#D97373" },
	["@constant.macro"] = { fg = "#D34562" },
	["@debug"] = { fg = "#F0C775" },
	["@define"] = { fg = "#BB5FCE" },
	["@diff.delta"] = { fg = "#5E8D87" },
	["@diff.minus"] = { fg = "#D34562" },
	["@diff.plus"] = { fg = "#A7C973" },
	["@exception"] = { fg = "#D97373" },
	["@field"] = { fg = "#B295BB" },
	["@function.builtin"] = { fg = "#D97373" },
	["@function.macro"] = { fg = "#D34562" },
	["@include"] = { fg = "#D34562" },
	["@keyword"] = { fg = "#D97373" },
	["@macro"] = { fg = "#D34562" },
	["@method"] = { fg = "#F0C775" },
	["@namespace"] = { fg = "#D34562" },
	["@operator"] = { fg = "#FAF0E5" },
	["@parameter"] = { fg = "#B295BB" },
	["@preproc"] = { fg = "#F0C775" },
	["@property"] = { fg = "#FAF0E5" },
	["@punctuation"] = { fg = "#D97373" },
	["@string"] = { fg = "#A7C973" },
	["@string.escape"] = { fg = "#D99059" },
	["@string.special"] = { fg = "#D99059" },
	["@type"] = { fg = "#D99059" },
	["@type.definition"] = { fg = "#D97373" },
	["@variable"] = { fg = "#FAF0E5" },
	["@variable.member"] = { fg = "#89BEB7" },
	["@variable.parameter"] = { fg = "#89BEB7" },
	-- PATCH_CLOSE
}

vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.g.colors_name = "grace"

for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end
