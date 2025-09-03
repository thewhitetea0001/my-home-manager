{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  home.packages = with pkgs; [
    sherlock-launcher
    bibata-cursors
    wine-staging
    winetricks
    pkg-config
    fastfetch
    nwg-look
    hyprshot
    hyprlock
    windsurf
    python3
    gnumake
    ranger
    gource
    unzip
    sassc
    rustc
    cargo
    cmake
    curl
    tree
    fish
    wine
    swww
    gtk4
    tree
    swww
    gtk4
    btop
    dpp
    feh
    eww
    mpv
    gcc
    vim
    rar
    zip
    jq
  ];
}
