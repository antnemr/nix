{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    
    home-manger = {
	    url = "github:nix-community/home-manager";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # plasma-manager = {
    #   url = "github:nix-community/plasma-manager";
    #   inputs.nixpkgs.follows = "nixpkgs";
    #   inputs.home-manager.follows = "home-manager";
    # };

    caelestia-shell = {
      url = "github:caelestia-dots/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    caelestia-cli = {
      url = "github:caelestia-dots/cli";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, stylix, spicetify-nix, nvf, disko, zen-browser, niri, caelestia-shell, caelestia-cli, ... }@inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    	system = system;
	    modules = [ 
        disko.nixosModules.disko
	      ./hosts/heim/configuration.nix
        niri.nixosModules.niri
      ];
    };

    homeConfigurations.anton = home-manager.lib.homeManagerConfiguration {
	    pkgs = pkgs;
	    extraSpecialArgs = { inherit inputs; };
	    modules = [
	      ./hosts/heim/home.nix 
	      stylix.homeModules.stylix
        niri.homeModules.niri
        niri.homeModules.stylix
        inputs.spicetify-nix.homeManagerModules.default
	      nvf.homeManagerModules.default
	    ];
    };
  };
}
