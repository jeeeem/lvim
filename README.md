## LunarVim Configuration

### Windows

#### Pre-requisites
- Powershell Core 7.1+
- C Compiler (gcc/clang)
- Make
- Nodejs
- Python
- Git
- RipGrep

### WSL/Linux

#### Pre-requisites
- Nodejs
- Python
- Git
- RipGrep

### TODO:
- Learn
  - How extending treesitter queries works
  - Integrate chezmoi tool
  - research which is better asyncrun.vim vs overseer.nvim
  - Vim
    - how to search for a specific line numbers and return the searched number of words

- General
  - configure tmp-tabnine to use different OS
  - On treesitter on spellchecker
  - refactor personal config using:
    - https://github.com/VonHeikemen/lsp-zero.nvim
  - vscode config
    - https://github.com/JulesNP/nvim/blob/main/init.lua

- Ergonomics:
  - Default No-Name file when creating a tab
  - Annotation Generator
    - https://github.com/danymat/neogen
  - EditorConfig
    - https://github.com/neovim/neovim/pull/21633
    - https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties
    - `:h editorconfig`
  - Silicon
    - https://github.com/krivahtoo/silicon.nvim
  - Breadcrumbs
    - https://github.com/utilyre/barbecue.nvim

- UI
  - Default Nerd-font
    - Jetbrain Mono
    - Victor Mono (cursive italic)
  - new `statuscolumn`
    - https://www.reddit.com/r/neovim/comments/107ms1s/the_new_signcolumn_merge_allows_us_to_set_a/
    - https://www.reddit.com/r/neovim/comments/10j0vyf/finally_figured_out_a_statuscolumn_i_am_happy/

- Configure Plugins
  - dashboard
    - add shortcuts for:
      - vimwiki?
  - bqf
    - always on the below window
  - nvim-surround
  - markdown
    - MD syntax
    - vimwiki
      - silenty call the commands
    - markdown preview
  - spectre
  - ufo (folding)
    - https://github.com/kevinhwang91/nvim-ufo
  - neorg
    - todo colored icons
       - green for done, red for pending

- LSP
  - Java
    - Try a JDK runtime of v1.8
  - Rust
  - Markdown
    - config marksman
  - PHP
    - Intelephense - lsp
    - phpactor - lsp
    - psalm - linter
    - phpstan - linter
  - configure cucumber lsp
- todo-comments
  - powershell filetype

- DAP
  - lua debugger

- Null-ls
  - Vale
    - for general writing
    - https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#vale

### Issues:
- None

### Fixes:
- nvim-jdtls
  - "Client 1 quit with exit code 13 and signal 0"
    - jdtls lsp is not working in a java project
      - `LvimCacheReset` and Delete workspace project in %USERPROFILE%/workspace/{project}
