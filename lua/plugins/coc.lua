return {
  -- 添加 coc.nvim
  {
    "neoclide/coc.nvim",
    branch = "release",
    build = "npm install",
    init = function()
      -- 禁用 LSP 相关插件以避免冲突（可选）
      vim.g.did_load_filetypes = 1
      vim.g.skip_ts_context_commentstring_module = true
    end,
    config = function()
      -- 基础 coc 配置
      vim.g.coc_global_extensions = {
        "coc-json",
        "coc-tsserver",
        "coc-pyright",
        "coc-clangd",
        -- 添加其他扩展
      }

      -- 快捷键绑定示例
      -- vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })
      -- vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { silent = true })
    end,
  },

  -- 禁用 LazyVim 默认的 LSP 插件（避免冲突）
  { "neovim/nvim-lspconfig", enabled = false },
  { "williamboman/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
}