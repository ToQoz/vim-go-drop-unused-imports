if exists("b:did_ftplugin_go_drop_unused")
    finish
endif

if !exists("g:godrop_command")
    if !exists(":GoDrop")
        let g:godrop_command = "GoDrop"
    else
        let g:godrop_command = "Drop"
    end
endif

command! -buffer DropUnused call s:GoDropUnused()

function! s:GoDropUnused()
    for x in goimps#Unused()
        execute g:godrop_command . ' ' . x
    endfor

    redraw
endfunction

let b:did_ftplugin_go_drop_unused = 1

" vim:ts=4:sw=4:et
