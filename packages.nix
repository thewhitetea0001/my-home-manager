{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  home.packages = with pkgs; [
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
    flatpak
    ranger
    gource
    unzip
    cmake
    curl
    tree
    tree
    swww
    gtk4
    btop
  ];
}
