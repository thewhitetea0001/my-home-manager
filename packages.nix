{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  home.packages = with pkgs; [
    sherlock-launcher
    bibata-cursors
    fastfetch
    nwg-look
    hyprshot
    hyprlock
    windsurf
    concord
    vesktop
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
    swww
    tree
    swww
    gtk4
    btop
  ];
}
