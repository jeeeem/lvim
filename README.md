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
  - Session management
    - https://github.com/jedrzejboczar/possession.nvim

- UI
  - Default Nerd-font
    - Jetbrain Mono
    - Victor Mono (cursive italic)
  - new `statuscolumn`
    - https://www.reddit.com/r/neovim/comments/107ms1s/the_new_signcolumn_merge_allows_us_to_set_a/

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

  <!-- LSP -->
  - mason
    - markdown
      - config marksman
    - php
      - Intelephense - lsp
      - phpactor - lsp
      - psalm - linter
      - phpstan - linter
    - configure cucumber lsp

  - todo-comments
    - powershell filetype

- LSP
  - Deno
  - Java
    - Try a JDK runtime of v1.8

- DAP
  - lua debugger

- Null-ls
  - Vale
    - for general writing
    - https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#vale

### Issues:
- None
