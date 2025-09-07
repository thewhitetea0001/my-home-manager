{ ... }:
{
  programs.waybar = {
    enable = true;

    style = ''
      /* Catppuccin Mocha */
      * {
        font-family: "JetBrains Mono", "Nerd Fonts";
        background: #1E1E2E;
        color: #CDD6F4;
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
        padding: 2px 6px;
        border-radius: 6px;
      }

      /* accents */
      #language { color: #F38BA8; }   /* pink */
      #disk, #network { color: #F5C2E7; } /* mauve */
      #temperature, #pulseaudio { color: #FAB387; } /* peach/orange */
      #memory, #battery { color: #A6E3A1; } /* green */
      #cpu, #clock { color: #F9E2AF; } /* yellow */

      /* tray / subtle contrasts */
      #tray {
        background: rgba(255,255,255,0.02);
        border: 1px solid rgba(255,255,255,0.03);
      }
    '';
  };
}
