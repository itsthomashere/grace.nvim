local lush = require("lush")
local hsl = lush.hsl

local new_palate = {
	bg = hsl("#141312"),
	fg = hsl("#FAF0E6"),
	black1 = hsl("#343434"),
	black2 = hsl("#808080"),
	red1 = hsl("#D34562"),
	red2 = hsl("#D97575"),
	green1 = hsl("#6CB070"),
	green2 = hsl("#A5C872"),
	yellow1 = hsl("#D99058"),
	yellow2 = hsl("#F0C674"),
	blue1 = hsl("#6CA0DC"),
	blue2 = hsl("#A1CAF1"),
	magneta1 = hsl("#BC61CE"),
	magneta2 = hsl("#B294BB"),
	cyan1 = hsl("#5E8D87"),
	cyan2 = hsl("#8ABEB7"),
	white1 = hsl("#36454F"),
	white2 = hsl("#DCDCDC"),
}

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		ColorColumn({ bg = new_palate.black1 }), -- Columns set with 'colorcolumn'
		Conceal({ fg = new_palate.fg, bg = new_palate.white1 }), -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ bg = new_palate.white2, fg = new_palate.black2 }), -- Character under the cursor
		CurSearch({ bg = new_palate.yellow1, fg = new_palate.black1 }), -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		-- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory({ fg = new_palate.blue2 }), -- Directory names (and other special names in listings)
		DiffAdd({ fg = new_palate.green1 }), -- Diff mode: Added line |diff.txt|
		DiffChange({ fg = new_palate.cyan2 }), -- Diff mode: Changed line |diff.txt|
		DiffDelete({ fg = new_palate.red1 }), -- Diff mode: Deleted line |diff.txt|
		-- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     { }, -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		ErrorMsg({ fg = new_palate.red1 }), -- Error messages on the command line
		-- VertSplit      { }, -- Column separating vertically split windows
		Folded({ bg = new_palate.black1 }), -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		SignColumn({ bg = new_palate.white1, fg = new_palate.white2 }), -- Column where |signs| are displayed
		-- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ bg = new_palate.yellow1, fg = new_palate.black1 }), -- |:substitute| replacement text highlighting
		LineNr({ fg = new_palate.white2 }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove({ fg = new_palate.white1 }), -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow({ fg = new_palate.white1 }), -- Line number for when the 'relativenumber' option is set, below the cursor line
		-- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen({ fg = new_palate.magneta1 }), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({ fg = new_palate.green2 }), -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		MsgSeparator({ fg = new_palate.white1 }), -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		-- NonText({ fg = palate.inlined }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal({ bg = new_palate.bg, fg = new_palate.fg }), -- Normal text
		NormalFloat({ bg = new_palate.black1, fg = new_palate.fg }), -- Normal text in floating windows.
		FloatBorder({ fg = new_palate.fg }), -- Border of floating windows.
		FloatTitle({ fg = new_palate.fg }), -- Title of floating windows.
		NormalNC({ Normal }), -- normal text in non-current windows
		Pmenu({ fg = new_palate.fg, bg = new_palate.black1 }), -- Popup menu: Normal item.
		PmenuSel({ fg = new_palate.magneta1 }), -- Popup menu: Selected item.
		PmenuKind({ Pmenu }), -- Popup menu: Normal item "kind"
		PmenuKindSel({ PmenuSel }), -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		PmenuSbar({ fg = new_palate.white2, bg = new_palate.white1 }), -- Popup menu: Scrollbar.
		PmenuThumb({ bg = new_palate.white2 }), -- Popup menu: Thumb of the scrollbar.
		-- Question       { }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ fg = new_palate.magneta1, bg = new_palate.white1 }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ bg = new_palate.yellow1, fg = new_palate.black1 }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine({ bg = new_palate.white2, fg = new_palate.bg }), -- Status line of current window
		-- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine({ bg = new_palate.black1, fg = new_palate.black2 }), -- Tab pages line, not active tab page label
		TabLineFill({ bg = new_palate.black1 }), -- Tab pages line, where there are no labels
		TabLineSel({ bg = new_palate.black2 }), -- Tab pages line, active tab page label
		Title({ fg = new_palate.fg }), -- Titles for output from ":set all", ":autocmd" etc.
		Visual({ bg = new_palate.black1, fg = new_palate.white2 }), -- Visual mode selection
		-- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = new_palate.yellow2 }), -- Warning messages
		-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		WinBar({ bg = new_palate.white1, fg = new_palate.fg }), -- Window bar of current window
		WinBarNC({ bg = new_palate.bg, fg = new_palate.white1 }), -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment({ fg = new_palate.black2 }), -- Any comment

		Constant({ fg = new_palate.red2, gui = "bold" }), -- (*) Any constant
		String({ fg = new_palate.green2 }), --   A string constant: "this is a string"
		Character({ fg = new_palate.magneta1 }), --   A character constant: 'c', '\n'
		Number({ fg = new_palate.cyan2 }), --   A number constant: 234, 0xff
		Boolean({ fg = new_palate.red2 }), --   A boolean constant: TRUE, false
		Float({ fg = new_palate.cyan2 }), --   A floating point constant: 2.3e10

		Identifier({ Normal }), -- (*) Any variable name
		Function({ fg = new_palate.yellow2 }), --   Function name (also: methods for classes)

		Statement({ fg = new_palate.yellow1 }), -- (*) Any statement
		Conditional({ fg = new_palate.yellow1, gui = "italic" }), --   if, then, else, endif, switch, etc.
		Repeat({ fg = new_palate.yellow1, gui = "italic" }), --   for, do, while, etc.
		Label({ fg = new_palate.magneta1 }), --   case, default, etc.
		Operator({ Normal }), --   "sizeof", "+", "*", etc.
		Keyword({ fg = new_palate.red2, gui = "italic" }), --   any other keyword
		Exception({ Conditional }), --   try, catch, throw

		PreProc({ Label }), -- (*) Generic Preprocessor
		Include({ fg = new_palate.magneta1 }), --   Preprocessor #include
		Define({ Include }), --   Preprocessor #define
		Macro({ fg = new_palate.red1 }), --   Same as Define
		PreCondit({ fg = new_palate.magneta1 }), --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = new_palate.yellow1 }), -- (*) int, long, char, etc.
		StorageClass({ fg = new_palate.red2 }), --   static, register, volatile, etc.
		Structure({ fg = new_palate.yellow1 }), --   struct, union, enum, etc.
		Typedef({ fg = new_palate.magneta1 }), --   A typedef

		Special({ fg = new_palate.cyan2 }), -- (*) Any special symbol
		SpecialChar({ fg = new_palate.yellow1 }), --   Special character in a constant
		Tag({ fg = new_palate.red1 }), --   You can use CTRL-] on this
		Delimiter({ fg = new_palate.red2 }), --   Character that needs attention
		SpecialComment({ fg = new_palate.green1 }), --   Special things inside a comment (e.g. '\n')
		Debug({ Normal }), --   Debugging statements

		Underlined({ gui = "underline" }), -- Text that stands out, HTML links
		Ignore({}), -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error({ fg = new_palate.red1 }), -- Any erroneous construct
		Todo({ bg = new_palate.yellow1, fg = new_palate.bg }), -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		LspReferenceText({ gui = "underline" }), -- Used for highlighting "text" references
		LspReferenceRead({ gui = "underline" }), -- Used for highlighting "read" references
		LspReferenceWrite({ gui = "underline" }), -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter({ fg = new_palate.red1, bg = new_palate.white2 }), -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError({ fg = new_palate.red1 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn({ fg = new_palate.yellow2 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo({ fg = new_palate.blue1 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint({ fg = new_palate.green2 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk({ DiagnosticHint }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError({ fg = new_palate.red1 }), -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn({ fg = new_palate.yellow2 }), -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo({ fg = new_palate.blue1 }), -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint({ fg = new_palate.green2 }), -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk({ DiagnosticVirtualTextHint }), -- Used for "Ok" diagnostic virtual text.
		DiagnosticVirtualLinesError({ fg = new_palate.red1 }), -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualLinesWarn({ fg = new_palate.yellow2 }), -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualLinesInfo({ fg = new_palate.blue1 }), -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualLinesHint({ fg = new_palate.green2 }), -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualLinesOk({ DiagnosticVirtualLinesHint }), -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError({ gui = "undercurl", sp = new_palate.red1 }), -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn({ gui = "undercurl", sp = new_palate.yellow2 }), -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo({ gui = "undercurl", sp = new_palate.blue1 }), -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint({ gui = "undercurl", sp = new_palate.green2 }), -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk({ DiagnosticUnderlineHint }), -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError({ bg = new_palate.black1, fg = new_palate.red1 }), -- -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn({ bg = new_palate.black1, fg = new_palate.yellow2 }), -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo({ bg = new_palate.black1, fg = new_palate.blue1 }), -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint({ bg = new_palate.black1, fg = new_palate.green2 }), -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk({ DiagnosticFloatingHint }), -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError({ fg = new_palate.red1 }), -- Used for "Error" signs in sign column.
		DiagnosticSignWarn({ fg = new_palate.yellow2 }), -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo({ fg = new_palate.blue1 }), -- Used for "Info" signs in sign column.
		DiagnosticSignHint({ fg = new_palate.green2 }), -- Used for "Hint" signs in sign column.
		DiagnosticSignOk({ DiagnosticSignHint }), -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109
		sym("@diff.plus")({ fg = new_palate.green2 }),
		sym("@diff.minus")({ fg = new_palate.red1 }),
		sym("@diff.delta")({ fg = new_palate.cyan1 }),
		-- sym("@spell")({ fg = palate.inlined_bg }),
		-- sym("@text.literal")({ fg = palate.searched }), -- Comment
		-- sym("@text.reference")({ fg = palate.fg }), -- Identifier
		-- sym("@text.title")({ fg = palate.fg }), -- Title
		-- sym("@text.uri")({ fg = palate.fg }), -- Underlined
		-- sym("@text.underline")({ fg = palate.fg }), -- Underlined
		-- sym("@text.todo")({ bg = palate.blue, fg = palate.inlined_bg }), -- Todo
		sym("@comment")({ fg = new_palate.black2 }), -- Comment
		sym("@punctuation")({ fg = new_palate.red2 }), -- Delimiter
		sym("@constant")({ fg = new_palate.red2 }), -- Constant
		sym("@constant.builtin")({ fg = new_palate.red2 }), -- Special
		sym("@constant.macro")({ fg = new_palate.red1 }), -- Define
		sym("@define")({ fg = new_palate.magneta1 }), -- Define
		sym("@macro")({ fg = new_palate.red1 }), -- Macro
		sym("@string")({ fg = new_palate.green2 }), -- String
		sym("@string.escape")({ fg = new_palate.yellow1 }), -- SpecialChar
		sym("@string.special")({ fg = new_palate.yellow1 }), -- SpecialChar
		sym("@character")({ fg = new_palate.magneta1 }), -- Character
		sym("@character.special")({ fg = palate.yellow1 }), -- SpecialChar
		sym("@number")({ Number }), -- Number
		sym("@boolean")({ Boolean }), -- Boolean
		sym("@float")({ Float }), -- Float
		sym("@function")({ Function }), -- Function
		sym("@function.builtin")({ fg = new_palate.red2 }), -- Special
		sym("@function.macro")({ fg = new_palate.red1 }), -- Macro
		sym("@parameter")({ fg = new_palate.magneta2 }), -- Identifier
		sym("@method")({ fg = new_palate.yellow2 }), -- Function
		sym("@field")({ fg = new_palate.magneta2 }), -- Identifier
		sym("@property")({ fg = new_palate.fg }), -- Identifier
		-- sym("@constructor")({ fg = palate.fg }), -- Special
		-- sym("@conditional")({ fg = palate.fg }), -- Conditional
		-- sym("@repeat")({ fg = palate.fg }), -- Repeat
		-- sym("@label")({ fg = palate.fg }), -- Label
		sym("@operator")({ fg = new_palate.fg }), -- Operator
		sym("@keyword")({ fg = new_palate.red2 }), -- Keyword
		sym("@exception")({ fg = new_palate.red2 }), -- Exception
		sym("@variable")({ fg = new_palate.fg }), -- Identifier
		sym("@variable.member")({ fg = new_palate.cyan2 }), -- Identifier
		sym("@variable.parameter")({ fg = new_palate.cyan2 }),
		sym("@type")({ fg = new_palate.yellow1 }), -- Type
		sym("@type.definition")({ fg = new_palate.red2 }), -- Typedef
		-- sym("@storageclass")({ fg = palate.fg }), -- StorageClass
		-- sym("@structure")({ fg = palate.fg }), -- Structure
		sym("@namespace")({ fg = new_palate.red1 }), -- Identifier
		sym("@include")({ fg = new_palate.red1 }), -- Include
		sym("@preproc")({ fg = new_palate.yellow2 }), -- PreProc
		sym("@debug")({ fg = new_palate.yellow2 }), -- Debug
		-- sym("@tag")({ fg = palate.fg }), -- Tag

		-- Mini.diff

		MiniDiffSignAdd({ fg = new_palate.green2 }),
		MiniDiffSignChange({ fg = new_palate.cyan1 }),
		MiniDiffSignDelete({ fg = new_palate.red1 }),

		-- Mini.statusline
		MiniStatuslineModeNormal({ bg = new_palate.green1, fg = new_palate.bg }),
		MiniStatuslineModeInsert({ bg = new_palate.black1, fg = new_palate.white2 }),
		MiniStatuslineModeVisual({ bg = new_palate.magneta1, fg = new_palate.fg }),
		MiniStatuslineModeReplace({ bg = new_palate.red2, fg = new_palate.fg }),
		MiniStatuslineModeCommand({ bg = new_palate.cyan1, fg = new_palate.black1 }),
		MiniStatuslineFilename({ bg = new_palate.black1, fg = new_palate.white2 }),
		MiniStatuslineDevinfo({ bg = new_palate.black2 }),

		--Mini.file
		MiniFilesBorder({ bg = "none", fg = new_palate.white2 }),
		MiniFilesNormal({ bg = "none", fg = new_palate.white2 }),
		MiniFilesCursorLine({ bg = "none", fg = new_palate.magneta1 }),
		MiniFilesFile({ bg = "none", fg = new_palate.white2 }),
		MiniFilesDirectory({ bg = "none", fg = new_palate.white2 }),
		MiniFilesTitle({ bg = "none", fg = new_palate.white2 }),
		MiniFilesTitleFocused({ bg = new_palate.yellow2, fg = new_palate.bg }),
		--Mini.notify
		MiniNotifyBorder({ bg = "none", fg = new_palate.white2 }),
		MiniNotifyLspProgress({ bg = "none", fg = new_palate.white2 }),
		MiniNotifyNormal({ bg = "none", fg = new_palate.white2 }),
		MiniNotifyTitle({ bg = "none", fg = new_palate.white2 }),
	}
end)

-- Return our parsed theme for extenson or use elsewhere.
return theme

-- vi:nowrap
