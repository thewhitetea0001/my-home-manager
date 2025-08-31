{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  home.packages = with pkgs; [
    sherlock-launcher
    bibata-cursors
    pkg-config
    fastfetch
    nwg-look
    hyprshot
    hyprlock
    windsurf
    python3
    ranger
    sassc
    rustc
    cargo
<<<<<<< HEAD
    tree
    fish
    swww
    gtk4
=======
    cmake
    tree
    swww
    gtk4
    dpp
>>>>>>> e9ebf8a (первые кости для будущих страданий)
    feh
    eww
    mpv
    gcc
    vim
    jq
  ];
}
