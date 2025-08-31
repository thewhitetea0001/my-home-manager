{ ... }:
{ 
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      alias nuh='nix run github:nix-community/home-manager -- switch --flake ~/home-manager#tea'
      alias ff='fastfetch'
      alias rmt='sudo mv /home/trash'
      alias rain='python ~/Scripts/terminal-rain-lightning/terminal_rain_lightning.py --rain-color yellow'

      PS1="\[\e[31m\][\[\e[33m\]\u\[\e[32m\]@\[\e[36m\]\h \[\e[35m\]\w\[\e[0m\]]\$ "
    '';
  };
}
