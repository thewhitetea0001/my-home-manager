{...}:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        height = 20;
        expand-center = true;

        modules-left = [ "cpu" "memory" "temperature" "disk" ];
        modules-center = [ ];
        modules-right = [
          "hyprland/language"
          "network"
          "pulseaudio"
          "battery"
          "clock"
          "tray"
        ];

        cpu = {
          format = "  {usage}%";
          interval = 2;
        };

        memory = {
          format = "  {}%";
          interval = 2;
        };

        temperature = {
          format = "{icon} {temperatureC}°C";
          thermal-zone = 0;
          format-icons = [ "󰜗 " "󰌪 " "󰈸 " "󱗗 " ];
          interval = 2;
        };

        disk = {
          format = " {}%";
          interval = 2;
        };

        "hyprland/language" = {
          format = " {}";
          format-en = "english";
          format-ru = "russian";
          format-uk = "ukranian";
          keyboard-name = "at-translated-set-2-keyboard";
        };

        network = {
          format = "{icon} {signalStrength}%";
          format-icons = [ "󰤯 " "󰤟 " "󰤢 " "󰤥 " "󰤨 " ];
          format-disconnected = " ";
          tooltip = true;
          tooltip-format = "{ifname}: {essid}";
          interval = 2;
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-icons = [ "" " " "  " ];
          format-muted = " ";
        };

        battery = {
          bat = "BAT0";
          format = "{icon} {}%";
          format-icons = [
            "󱃍 " "󰁺" "󰁻" "󰁼" "󰁽"
            "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"
          ];
        };

        clock = {
          format = "󰥔  {:%H:%M}";
          format-alt = "  {:%A, %B %d, %Y (%R)}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            weeks-pos = "right";
            on-scroll = 1;
            on-click-right = "mode";
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
          actions = {
            on-click-right = "mode";
            on-click-forward = "tz_up";
            on-click-backward = "tz_down";
            on-scroll-up = "shift_up";
            on-scroll-down = "shift_down";
          };
        };
      };
    };
  };
}
