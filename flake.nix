{
  description = "flake.tavin";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "nixpkgs/nixos-25.11";
    home-manager = {
      # Follow corresponding `release` branch from Home Manager
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      nixvim,
      ...
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-stable = nixpkgs-stable.legacyPackages.${system};

      # overlays = [
      #     inputs.neovim-nightly-overlay.overlays.default
      # ];
    in
    {
      nixosConfigurations = {
        dex = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/dex/configuration.nix ];
          specialArgs = {
            inherit pkgs-stable;
          };
        };
        dexjr = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/dexjr/configuration.nix ];
          specialArgs = {
            inherit pkgs-stable;
          };
        };
      };
      homeConfigurations = {
        otavio = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            nixvim.homeModules.nixvim
            ./users/otavio/home.nix
            # {
            #     nixpkgs.overlays = overlays;
            # }
          ];
          extraSpecialArgs = {
            inherit pkgs-stable;
            inherit inputs;
          };
        };
      };
    };
}
