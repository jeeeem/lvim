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
  - Integrate with chezmoi tool
  - how to search for a range of line numbers and return the searched number of words

- General
  - configure tmp-tabnine to use different OS
  - On treesitter on spellchecker
  - refactor personal config using:
    - https://github.com/VonHeikemen/lsp-zero.nvim
  - vscode config
    - https://github.com/JulesNP/nvim/blob/main/init.lua
  - create minimal config

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
  - create simple plugin using this
    - https://vimtricks.com/p/vim-copy-line
  - copilot
    - https://medium.com/aimonks/a-guide-to-integrating-lunarvim-github-copilot-61d92f764913

- UI
  - Default Nerd-font
    - Jetbrain Mono
    - Victor Mono (cursive italic)
  - new `statuscolumn`
    - https://github.com/luukvbaal/statuscol.nvim
    - configure status column to separate diagnostics/todo signs from git signs
    - https://www.reddit.com/r/neovim/comments/107ms1s/the_new_signcolumn_merge_allows_us_to_set_a/
    - https://www.reddit.com/r/neovim/comments/10j0vyf/finally_figured_out_a_statuscolumn_i_am_happy/

- Plugins
  - lsp ergonomic
    - https://github.com/ray-x/lsp_signature.nvim
    - https://github.com/ray-x/navigator.lua
    - lsp_lines
      - use `gL` keymap
        - https://git.sr.ht/~whynothugo/lsp_lines.nvim
        - https://www.reddit.com/r/neovim/comments/12aqs6w/i_wish_neovim_had_strong_lsp_defaults_like_helix/
    - navbuddy
      - https://github.com/SmiteshP/nvim-navbuddy
    - https://github.com/m-demare/hlargs.nvim
    - https://github.com/lvimuser/lsp-inlayhints.nvim
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
    - https://github.com/folke/paint.nvim
      - https://www.reddit.com/r/neovim/comments/13mwsfo/how_do_i_show_markdown_headings_in_different/
  - spectre
  - ufo (folding)
    - https://github.com/kevinhwang91/nvim-ufo
  - neorg
    - todo colored icons
       - green for done, red for pending
  - todo-comments
    - powershell filetype
  - smarts-splits.nvim
  - task runner
    - research which is better asyncrun.vim vs overseer.nvim
  - refactoring
    - https://github.com/ThePrimeagen/refactoring.nvim
  - nvim-treesitter/nvim-treesitter-context
    - https://github.com/nvim-treesitter/nvim-treesitter-context
  - close buffers
    - https://github.com/axkirillov/hbac.nvim
  - mini
    - ai
    - align
    - pairs
    - comment
    - animate
    - hipatterns
    - indentscope
    - splitjoin
    - surround
    - bufremove

- LSP
  - python
    - ruff-lsp & ruff linter
  - Rust
  - Markdown
    - marksman
      - https://medium.com/@chrisatmachine/lunarvim-improve-markdown-editing-with-marksman-739d06c73a26
  - PHP
    - Intelephense - lsp
    - phpactor - lsp
       - https://github.com/adalessa/laravel.nvim
    - psalm - linter
    - phpstan - linter
  - cucumber
    - configure
  - yaml
    - spring schema
    - https://www.reddit.com/r/neovim/comments/10qrriw/neovim_k8s_yaml_autocompletion/
  - lemminx
    - maven auto complete
  - java
    - global nlsp-settings
  - js/ts
    - rome
      - https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rome
    - pretty-ts-error
      - https://github.com/yoavbls/pretty-ts-errors/issues/21
  - go
    - https://github.com/ray-x/go.nvim
  - assembly
    - https://github.com/bergercookie/asm-lsp
    - https://www.reddit.com/r/neovim/comments/x3kekm/how_do_you_write_assembly_with_neovim/

- DAP
  - lua debugger

- Null-ls
  - java
    - google format
  - Vale
    - for general writing
    - https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#vale
  - typescript
    - rome
      - formatter
      - linter
      - https://github.com/rome/tools/discussions/3544#discussioncomment-4094318
    - code actions
  - lua
    - formatter
  - python
    - black

- Snippets
  - lua
    - pcall
  - java
    - general
      - package
      - interface
      - debug (sysout)
    - infor specifics
      - Element

- Config
  - try this telescope picker config
    - https://github.com/nvim-telescope/telescope.nvim/issues/2014#issuecomment-1541423345

### Issues:
- bqf
  - not going back to previous cursor position when the preview is on the previous cursor

### Fixes:
- nvim-jdtls
  - "Client 1 quit with exit code 13 and signal 0"
    - jdtls lsp is not working in a java project
      - `LvimCacheReset` and Delete workspace project in %USERPROFILE%/workspace/{project}
