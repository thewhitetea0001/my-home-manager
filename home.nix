{ pkgs, ... }:
{
  home.username = "tea";
  home.homeDirectory = "/home/tea";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
  programs.fish.enable = true;

  imports = [
    # default
    ./packages.nix
    ./modules/kitty.nix
    ./modules/bashrc.nix
    ./modules/neovim.nix
    ./modules/sherlock.nix
    # hyprland
    ./modules/hypr/hyprland.nix
    ./modules/hypr/hyprlock.nix
    # waybar
    ./modules/waybar/config.nix
    ./modules/waybar/style.nix
  ];
}
