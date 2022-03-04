vim.cmd(
  [[
    augroup MSreports
      autocmd!
      autocmd BufNewFile *MSreport.md call ReportPreamble()
    augroup END

    augroup MJreports
      autocmd!
      autocmd BufNewFile *MJreport.md call MJReportPreamble()
    augroup END

    augroup reports
      autocmd!
      autocmd FileType markdown nnoremap <leader>c :call ReportCompile()<CR>
      autocmd FileType markdown nnoremap <leader>d :call ReportCompileDoc()<CR>
      autocmd FileType makkdown vmap <leader>t :EasyAlign*<Bar><CR>
    augroup END
  ]]
)
