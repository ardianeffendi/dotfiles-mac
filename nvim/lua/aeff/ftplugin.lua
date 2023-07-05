local set_indentation = function()
  local filetypes = { 'lua', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' }
  local indent_settings = {
    shiftwidth = 2,
    tabstop = 2,
    softtabstop = 2,
  }

  for _, ft in ipairs(filetypes) do
    vim.cmd(string.format([[
      augroup FileType_%s
        autocmd!
        autocmd FileType %s setlocal shiftwidth=%d tabstop=%d softtabstop=%d
      augroup END
    ]], ft, ft, indent_settings.shiftwidth, indent_settings.tabstop,
      indent_settings.softtabstop))
  end
end

set_indentation()
