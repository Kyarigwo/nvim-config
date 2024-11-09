{ pkgs, inputs, ... } :
let
  nvim = inputs.nixvim.legacyPackages."${pkgs.system}".makeNixvimWithModule {
    inherit pkgs;
    module = import ./nixvim.nix;
  };
in
{
  home.packages = with pkgs; [
    nvim
    nixd
  ];

}
