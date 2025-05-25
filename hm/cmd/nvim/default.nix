{
  programs.nvf = {
    enable = true;
    settings.vim = {
      viAlias = true;
      vimAlias = true;
      
      options = {
        tabstop = 2;
        shiftwidth = 2;
      };

      lsp = {
        enable = true;
      };

      spellcheck = {
        enable = true;
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;

        nix.enable = true;
        ts.enable = true;
        markdown.enable = true;
      };
      
      visuals = {
        indent-blankline.enable = true;
        nvim-scrollbar.enable = true;
        nvim-cursorline.enable = true;
        nvim-web-devicons.enable = true;
        cinnamon-nvim.enable = true;
        fidget-nvim.enable = true;
        highlight-undo.enable = true;
      };

      statusline = {
        lualine = {
          enable = true;
        };
      };

      autocomplete = {
        nvim-cmp.enable = true;
      };

      tabline = {
        nvimBufferline.enable = true;
      };

      telescope.enable = true;

      autopairs.nvim-autopairs.enable = true;

      filetree = {
        nvimTree = {
          enable = true;
        };
      };

      git = {
        enable = true;
      };
    };
  };
}
