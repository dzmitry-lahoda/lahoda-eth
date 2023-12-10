{
  description = "...";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
      ];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }:
        let
          python-packages = ps: with ps; [ numpy cvxpy wheel virtualenv ];
          python = pkgs.python3.withPackages python-packages;

        in
        {
          devShells = {
            default = pkgs.mkShell {
              buildInputs = [
                python
                pkgs.virtualenv
                pkgs.conda
                pkgs.pyo3-pack

              ];

              VIRTUALENV_PYTHON = "${python}/bin/python3";
              VIRTUAL_ENV = 1;
              nativeBuildInputs = [ python ];

            };
          };
        };
    };
}
