{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.npm
  ];

  shellHook = ''
    export PATH="$PATH:$PWD/node_modules/.bin"
  '';
}