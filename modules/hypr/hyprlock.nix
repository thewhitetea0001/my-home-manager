{ config, pkgs, ... }:
{
  home.file.".config/hypr/hyprlock.conf".text = ''
    background {
      monitor = LVDS-1
      path = ${config.home.homeDirectory}/Pictures/Wallpapers/wlp3.png
      path = ${config.home.homeDirectory}/Pictures/Wallpapers/wlp4.png
      blur_passes = 3
      blur_size = 5
    }

    label {
      monitor = LVDS-1
      #text = cmd[update:1000] echo "<b><big> $(date +"%I:%M:%S %p") </big></b>" # AM/PM
      text = cmd[update:1000] echo "<b><big> $(date +"%H:%M:%S") </big></b>" # 24H
      color = $color15
      font_size = 22
      font_family = JetBrains Mono Nerd Font 10
      position = 0, 60
      halign = center
      valign = center
    }

    input-field {
      monitor = LVDS-1
      size = 100, 30
      rounding = 7
      outline_thinkness = 0
    }
  '';
}
