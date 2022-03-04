vim.cmd([[

  let g:vimwiki_autowriteall = 1
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]
  let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
  let g:vimwiki_global_ext = 0
  let g:vimwiki_use_calendar = 1
  ]])
