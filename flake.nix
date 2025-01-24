{
  description = "NixOS System Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable }:
  {
    nixosConfigurations = {
      knowledge = let 
        pkgs-stable = import nixpkgs {
	  system = "x86_64-linux";
	  config = {
	    allowUnfree = true;
            allowUnfreePredicate = _: true;
	  };
	};
	pkgs-unstable = import nixpkgs-unstable {
	  system = "x86_64-linux";
	  config = {
	    allowUnfree = true;
	    allowUnfreePredicate = _: true;
	  };
	};
      in nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {
	  inherit pkgs-stable pkgs-unstable;
	  username = "omni";
        };
        modules = [
	  ./hosts/knowledge/configuration.nix
	  ./hosts/knowledge/software.nix
        ];
      };

    };
  };
}
