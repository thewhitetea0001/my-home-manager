{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";


    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };
  outputs = { 
    nixpkgs,
    home-manager,
    nixvim,
    ... 
  }:
  let
    system = "x86_64-linux";
  in {
    homeConfigurations."tea" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { inherit system; };
      modules = [ 
        ./home.nix
        nixvim.homeModules.nixvim
      ];
    };
  };
}
