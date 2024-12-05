{
  inputs = {
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      texEnv = pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-minimal latex-bin latexmk;
      };
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          texEnv
          git-lfs
        ];
      };
    }
  );
}
