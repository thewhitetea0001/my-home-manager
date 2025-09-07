{ pkgs, ... }:

let
  theme = "catppuccin"; # themes: gruvbox, catppuccin
in {
  home.username = "tea";
  home.homeDirectory = "/home/tea";
  home.stateVersion = "24.11";

  imports = [
    ./packages.nix

    # themed
    ./modules/${theme}/bashrc.nix
    ./modules/${theme}/kitty.nix
    ./modules/${theme}/neovim.nix
    ./modules/${theme}/waybar/config.nix
    ./modules/${theme}/waybar/style.nix
    ./modules/${theme}/hypr/hyprland.nix
    ./modules/${theme}/hypr/hyprlock.nix
  ];

  # other
  programs.home-manager.enable = true;

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "Bibata-Modern-Ice";
    size = 24;
    package = pkgs.bibata-cursors;
  };
}
