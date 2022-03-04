vim.cmd(
  [[
    function ReportPreamble()
      .-1read /mnt/g/My\ Drive/TEMPLATES/Reports/report_template.md
      silent !cp -r '/mnt/g/My Drive/TEMPLATES/Reports/portada' .
      silent !cp -r '/mnt/g/My Drive/TEMPLATES/Reports/metadata' .
      silent !cp '/mnt/g/My Drive/TEMPLATES/Reports/custom-reference.docx' .
      silent !mkdir images
    endfunction

    function MJReportPreamble()
      .-1read /mnt/g/My\ Drive/TEMPLATES/MJReport/report_template.md
      silent !cp -r '/mnt/g/My Drive/TEMPLATES/MJReport/portada' .
      silent !cp -r '/mnt/g/My Drive/TEMPLATES/MJReport/metadata' .
      silent !cp -r '/mnt/g/My Drive/TEMPLATES/MJReport/images' .
      silent !cp '/mnt/g/My Drive/TEMPLATES/MJReport/custom-reference.docx' .
    endfunction

    function ReportCompile()
      let b:filename = expand('%:r')
      let b:filepdf = b:filename . ".pdf"
      execute "!pandoc --pdf-engine=lualatex --highlight-style tango '" . bufname("%") . "' metadata/metadata.yaml -o '" . b:filepdf . "'"
    endfunction

    function ReportCompileDoc()
      let b:filename = expand('%:r')
      let b:filedoc = b:filename . ".docx"
      execute "silent !pandoc --pdf-engine=lualatex --reference-doc=custom-reference.docx --highlight-style tango '" . bufname("%") . "' metadata/metadata.yaml -o '" . b:filedoc . "'"
    endfunction
  ]]
)
