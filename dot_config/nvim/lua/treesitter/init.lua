require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
    },
    ensure_installed = {
        "java",
        "python",
        "lua",
        "go",
        "yaml",
        "json",
        "markdown",
        "html",
        "typescript",
        "query",
        "vue",
        "bash",
        "css",
        "php",
        "javascript",
        "regex"
      }
}
