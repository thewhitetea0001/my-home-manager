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
    gource
    sassc
    rustc
    cargo
    tree
    fish
    swww
    gtk4
    cmake
    tree
    swww
    gtk4
    dpp
    feh
    eww
    mpv
    gcc
    vim
    jq
  ];
}
