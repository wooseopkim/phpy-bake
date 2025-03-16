let
  pkgs = import <nixpkgs> { };
in
with pkgs;
mkShell {
  packages = [
    act
    gh
    shfmt
    shellcheck
    nil
    nixfmt-rfc-style
  ];
}
