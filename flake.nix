{
  description = "Ma config avec choix Desktop (dev), Gaming et Piano";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ...}:
    let 
      system = "x86_64-linux";
    in {
      nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
        inherit system;
	modules = [
	  ./hosts/desktop/configuration.nix
	  home-manager.nixosModules.home-manager
	  {
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.tim = import ./home/tim/default.nix;
	  }
	];
      };
    };
}
