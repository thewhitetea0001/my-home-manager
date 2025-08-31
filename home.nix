{ pkgs, ... }:
{
  home.username = "tea";
  home.homeDirectory = "/home/tea";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
<<<<<<< HEAD
  programs.fish.enable = true;

  imports = [
    ./packages.nix
    ./modules/fish.nix
=======

  imports = [
    ./packages.nix
    ./modules/kitty.nix
>>>>>>> e9ebf8a (первые кости для будущих страданий)
    ./modules/bashrc.nix
    ./modules/neovim.nix
    ./modules/sherlock.nix

    ./modules/hyprland.nix
    ./modules/hyprlock.nix
  ];
}
