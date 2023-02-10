

### Debug stuffs

  - ..
  - `:NullLSInfo ??`
  - `:TSModuleInfo`
  - `:TSInstall markdown`
  - `:TS..`
  - `:checkhealth <module>`
  - ..
  - ..
  - [Git housekeeping tutorial: clean-up outdated branches in local and remote repositories | Railsware Blog](https://railsware.com/blog/git-housekeeping-tutorial-clean-up-outdated-branches-in-local-and-remote-repositories/)
  - ..


### null-ls refs
  * [jose8a/kiosk-qc3: QC3 - Jared Revisions](https://github.com/jose8a/kiosk-qc3)
  * [jose-elias-alvarez/null-ls.nvim: Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.](https://github.com/jose-elias-alvarez/null-ls.nvim)
  * [null-ls.nvim/BUILTINS.md at main · jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#formatting)
  * [null-ls.nvim/BUILTIN_CONFIG.md at main · jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md)


### null-ls refs
  * ..
  * [ ] `js/vue/svelte/etc`
  * [JS/VUE: eslint/eslint: Find and fix problems in your JavaScript code.](https://github.com/eslint/eslint)
  * [SVELTE: avencera/rustywind: CLI for organizing Tailwind CSS classes](https://github.com/avencera/rustywind)
  * [JS/VUE: prettier/prettier: Prettier is an opinionated code formatter.](https://github.com/prettier/prettier)
  * ..
  * ..
  * [ ] `json`
  * [JSON: rhysd/fixjson: JSON Fixer for Humans using (relaxed) JSON5](https://github.com/rhysd/fixjson)
  * [JSON: stedolan/jq: Command-line JSON processor](https://github.com/stedolan/jq)
  * ..
  * ..
  * [ ] `html`
  * [HTML: Tidy](https://www.html-tidy.org/)
  * ..
  * ..
  * [ ] `css`
  * [CSS: stylelint/stylelint: A mighty CSS linter.](https://github.com/stylelint/stylelint)
  * ..
  * ..
  * [ ] `md`
  * [MD: igorshubovych/markdownlint-cli: MarkdownLint CLI](https://github.com/igorshubovych/markdownlint-cli)
  * [MD: executablebooks/mdformat: CommonMark compliant Markdown formatter](https://github.com/executablebooks/mdformat)
  * [MD: remarkjs/remark: remark w/plugins can inspect/change markup.](https://github.com/remarkjs/remark)
  * ..
  * [MD: jonschlinkert/markdown-toc: API and CLI for generating an MD TOC.](https://github.com/jonschlinkert/markdown-toc)
  * [MD: mdwint/ocdc: A changelog formatter for "people", neat freaks, and sloppy typists.](https://github.com/mdwint/ocdc)
  * ..
  * ..
  * [ ] `lua/rust/shell/etc`
  * [LUA: JohnnyMorganz/StyLua: An opinionated Lua code formatter](https://github.com/JohnnyMorganz/StyLua)
  * [RUST: rust-lang/rustfmt: Format Rust code](https://github.com/rust-lang/rustfmt)
  * [BASH: anordal/shellharden: corrective bash syntax highlighter](https://github.com/anordal/shellharden)
  * ..
  * ..
  * [ ] `sql`
  * [SQL: darold/pgFormatter: A PostgreSQL SQL syntax beautifier.](https://github.com/darold/pgFormatter)
  * ..
  * ..
  * [ ] `other-js`
  * [JS/etc: deno fmt | Manual | Deno](https://deno.land/manual@v1.30.3/tools/formatter)
  * [JS/etc: dprint - Code Formatter](https://dprint.dev/)
  * ..


### on:hover
* [Free Dictionary API](https://dictionaryapi.dev/)




### configuring neovim to format on:keymapN, on:keymapViz, on:save

  * [Formatting on save · jose-elias-alvarez/null-ls.nvim Wiki](https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save)
  * ..
  * ..
  * [eslint/eslint: Find and fix problems in your JavaScript code.](https://github.com/eslint/eslint#configuration)
  * [avencera/rustywind: CLI for organizing Tailwind CSS classes](https://github.com/avencera/rustywind)
  * [stylelint/stylelint: A mighty CSS linter that helps you avoid errors and enforce conventions.](https://github.com/stylelint/stylelint)
  * [HTML Tidy](https://www.html-tidy.org/)
  * ..
  * ..
  * `null-ls/tutorials`
  * [Neovim for Beginners —LSP using null-ls.nvim | by alpha2phi | Medium](https://alpha2phi.medium.com/neovim-for-beginners-lsp-using-null-ls-nvim-bd954bf86b40)
  * [Nvim lsp: set up null-ls for beginners | SmartTech101](https://smarttech101.com/nvim-lsp-set-up-null-ls-for-beginners/)
  * ..
  * ..
  * `eslint-plus-standardjs`
  * [eslint-config-standard - npm](https://www.npmjs.com/package/eslint-config-standard)
  * [Share Configurations - ESLint - Pluggable JavaScript Linter](https://eslint.org/docs/latest/extend/shareable-configs)
  * [JavaScript Standard Style](https://standardjs.com/rules.html)
  * ..
  * ..
  * [feat(lsp): add range option to lsp.buf.format by mfussenegger · Pull Request #19998 · neovim/neovim](https://github.com/neovim/neovim/pull/19998)
    + `vim.keymap.set('v', 'gq', vim.lsp.buf.format)`
    + ..
  * [How to use null-ls formatter by default · Discussion #244 · jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim/discussions/244)
    + `CONFIG_EXAMPLE: null-ls for JS w/tsserver formatting disabled`
    + ..
  * [Range Formatting : neovim](https://www.reddit.com/r/neovim/comments/zv91wz/range_formatting/)
    + `KEYMAPSET_EXAMPLE: format visual selection`
    + ..
  * [Avoiding LSP formatting conflicts · jose-elias-alvarez/null-ls.nvim Wiki](https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts#neovim-08)
    + `CONFIG_EXAMPLE: null-ls format on:BufPreWrite (save)`
    + ..
  * [Linter & Formatter - Documentation](https://docs.rockylinux.org/books/nvchad/custom/plugins/null_ls/)
    + `CONFIG_EXAMPLE: null-ls format on:BufPreWrite (save)`
    + ..
  * [neovim - keymap for LSP code formatting in visual mode - Vi and Vim Stack Exchange](https://vi.stackexchange.com/questions/36946/keymap-for-lsp-code-formatting-in-visual-mode)
  * ..

