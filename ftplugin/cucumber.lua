local ok, lsp = pcall(require, "lspconfig")

if not ok then
  return
end

local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }

local opts = {
  root_dir = lsp.util.root_pattern(root_markers)
}

require("lvim.lsp.manager").setup("cucumber_language_server", opts)
