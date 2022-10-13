
-- Functions to use when making reports

vim.api.nvim_create_user_command("ReportTemplate", function()
  print("Creating Report Template...")
  -- Change current working directory if it's different from the file
  local bufpath = vim.fn.expand("%:p:h")
  print("Change PWD to " .. bufpath)
  vim.cmd("cd " .. bufpath)

  -- Read template file
  vim.cmd( [[ .-1read /mnt/g/My\ Drive/TEMPLATES/Reports/report_template.md ]] )

  -- Copy aditional files and folders
  os.execute("cp -r '/mnt/g/My Drive/TEMPLATES/Reports/portada/' ."  )
  os.execute("cp -r '/mnt/g/My Drive/TEMPLATES/Reports/metadata/' ."  )
  vim.fn.jobstart( { "mkdir", "images"} )
end,
{})
