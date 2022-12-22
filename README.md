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

- Ergonomics:
  - Default No-Name file when creating a tab

- UI
  - Default Nerd-font
    - Jetbrain Mono
    - Victor Mono (cursive italic)

- Configure Plugins
  - dashboard
    - add shortcuts for:
      - vimwiki?
  - bqf
    - always on the below window
  - nvim-surround
  - harpoon
  - markdown
    - MD syntax
    - vimwiki
      - silenty call the commands
    - markdown preview

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
  - icons
  - lua debugger

- Null-ls
  - Vale
    - for general writing
    - https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#vale

### Issues:

- Noice
  - separate the highlight text group along with its color `xxx`
