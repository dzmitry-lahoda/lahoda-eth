{
  description = "lahoda-eth";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.11";
  };
  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
      ];
      systems = [ "x86_64-linux" "aarch64-linux"  ];
      perSystem = { config, self', inputs', pkgs, system, ... }:
        let
          python-packages = ps: with ps; [ numpy cvxpy wheel virtualenv ];
          python = pkgs.python3.withPackages python-packages;

        in
        {
          devShells = {
            default = pkgs.mkShell {
              buildInputs = with pkgs; [
                python
                virtualenv                
                pyo3-pack
                lean4
                elan
              ];

              VIRTUALENV_PYTHON = "${python}/bin/python3";
              VIRTUAL_ENV = 1;
              nativeBuildInputs = [ python ];
              
            };
          };
        };
    };
}
