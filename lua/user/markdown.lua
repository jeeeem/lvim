local ok, md_preview = pcall(require, "markdown-preview.nvim")

if not ok then
  return
end

-- Markdown-Preview
-- use a custom port to start server or empty for random
vim.g.mkdp_port = 1111

-- echo preview page url in command line when open preview page
vim.g.mkdp_echo_preview_url = 1

-- Vimwiki
vim.g.vimwiki_list = {
  {
    path = '~/vimwiki',
    index = 'README',
    filetype = 'markdown',
    syntax = 'markdown',
    ext = '.md',
  },
}


