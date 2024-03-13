vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

--if vim





--[[
	if !exists('g:undotree_UndoDir')
	    let s:undoDir = &undodir
	    let s:subdir = has('nvim') ? 'nvim' : 'vim'
	    if s:undoDir == "."
	        let s:undoDir = $HOME . '/.local/state/' . s:subdir . '/undo/'
	    endif
	    let g:undotree_UndoDir = s:undoDir
	endif
]]-- w 
