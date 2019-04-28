let
  pkgs = import <nixpkgs> { };

  haskellPackages = pkgs.haskellPackages.override {
    overrides = self: super: {
      cabal-helper = self.callPackage ./vendor/cabal-helper-0.8.1.2/default.nix {};
    };
  };
in
  haskellPackages.callPackage ./default.nix { }