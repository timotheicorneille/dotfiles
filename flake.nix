{
  description = "Ma config avec choix Desktop (dev), Gaming et Piano";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ...}:
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
            home-manager.extraSpecialArgs = { inherit hyprland; };
	  }
	];
      };
     nixosConfigurations.pro-laptop-vm = nixpkgs.lib.nixosSystem {
       inherit system;
       modules = [
         ./hosts/pro-laptop-vm/configuration.nix
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
