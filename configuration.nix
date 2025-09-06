{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  boot.initrd.luks.devices."luks-cd962417-5774-48c4-b455-6fad7e1e3454".device = "/dev/disk/by-uuid/cd962417-5774-48c4-b455-6fad7e1e3454";
  boot.initrd.secrets = {
    "/boot/crypto_keyfile.bin" = null;
  };

  boot.loader.grub.enableCryptodisk = true;

  boot.initrd.luks.devices."luks-3abb1654-1d33-4a62-8014-f20ea6287ab1".keyFile = "/boot/crypto_keyfile.bin";
  boot.initrd.luks.devices."luks-cd962417-5774-48c4-b455-6fad7e1e3454".keyFile = "/boot/crypto_keyfile.bin";
  networking.hostName = "nixos"; # Define your hostname.

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Bratislava";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "sk_SK.UTF-8";
    LC_IDENTIFICATION = "sk_SK.UTF-8";
    LC_MEASUREMENT = "sk_SK.UTF-8";
    LC_MONETARY = "sk_SK.UTF-8";
    LC_NAME = "sk_SK.UTF-8";
    LC_NUMERIC = "sk_SK.UTF-8";
    LC_PAPER = "sk_SK.UTF-8";
    LC_TELEPHONE = "sk_SK.UTF-8";
    LC_TIME = "sk_SK.UTF-8";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users.tea = {
    isNormalUser = true;
    description = "tea";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    hyprland
    obsidian
    wayland
    firefox
    concord
    neovim
    waybar
    kitty
    wget
    git
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.hack
    font-awesome

    twemoji-color-font

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    noto-fonts-extra

    dejavu_fonts
    unifont
  ];
  
  services.flatpak.enable = true;
  programs.hyprland.enable = true;
  programs.thunar.enable = true;

  services.xserver.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };

  system.stateVersion = "25.05";

}
