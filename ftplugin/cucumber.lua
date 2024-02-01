local ok, lsp = pcall(require, "lspconfig")

if not ok then
  return
end

local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }

local opts = {
  root_dir = lsp.util.root_pattern(root_markers),
  settings = {
    cucumber = {
      features = {
        -- "src/test/**/*.feature",
        -- "features/**/*.feature",
        -- "tests/**/*.feature",
        -- "*specs*/**/.feature"

        -- for work
        "hrt/src/test/**/benefits/**/.feature",
        -- "features/**/benefits/**/*.feature",
        -- "src/test/**/benefits/**/*.feature",
        -- "features/**/benefits/**/*.feature",
      },
      glue = {
        -- "src/test/**/*.java",
        -- "features/**/*.js",
        -- "features/**/*.jsx",
        -- "features/**/*.ts",
        -- "features/**/*.tsx",
        -- "features/**/*.php",
        -- "features/**/*.py",
        -- "tests/**/*.py",
        -- "tests/**/*.rs",
        -- "features/**/*.rs",
        -- "features/**/*.rb",
        -- "*specs*/**/.cs",

        -- for work
        "hrt/src/test/**/benefits/**/*.java",
        "src/test/**/benefits/**/*.java",}
    }
  },
  on_attach = function(client, bufnr)
    print("attached to cucumber file")
    vim.keymap.set('n', "gd", vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set('n', "gn", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set('n', "gb", vim.diagnostic.goto_prev, { buffer = 0 })
  end
}

require("lvim.lsp.manager").setup("cucumber_language_server", opts)
