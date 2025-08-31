{...}:
{
  programs.waybar = {
    enable = true;

    style = ''
      * {
        font-family: "JetBrains Mono", "Nerd Fonts";
        background: #333333;
      }

      #cpu,
      #memory,
      #temperature,
      #disk,
      #language,
      #network,
      #pulseaudio,
      #battery,
      #clock,
      #tray {
        margin-left: 6px;
        margin-right: 6px;
      }

      #language {
        color: #cc6930;
      }

      #disk,
      #network {
        color: #cd999f;
      }

      #temperature,
      #pulseaudio {
        color: #ca3913;
      }

      #memory,
      #battery {
        color: #b6a929;
      }

      #cpu,
      #clock {
        color: #f9ba4e;
      }
    '';
  };
}
