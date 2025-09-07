{ self, ... }:
{
  programs.nixvim = {
    enable = true;

    opts = {
      number = true;
      relativenumber = true;
      
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };

    colorschemes.gruvbox.enable = true;
    
    plugins = {
      nvim-tree.enable = true;
      lualine.enable = true;
      treesitter.enable = true;
      web-devicons.enable = true;
      mini.enable = true;
      mini.modules.icons.enable = true;
    };

    keymaps = [
      {
        key = ";";
        action = "<cmd>NvimTreeOpen<CR>";
      }
    ];

    # === Plugins Config === #

    plugins.lsp = {
      enable = true;
      servers = {
        # javascript / typesctipt
        ts_ls.enable = true;
        
        # rust
        rust_analyzer.enable = true;
        rust_analyzer.installCargo = true;
        rust_analyzer.installRustc = true;

        # c / c++
        clangd.enable = true;

        # nix
        # no have :(
      };
    };

    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
    };
  };
}
