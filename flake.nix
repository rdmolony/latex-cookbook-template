{
  inputs = {
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      texEnv = pkgs.texliveSmall.withPackages (ps: with ps; [
        latexmk
        xkeyval
        marvosym
        imakeidx
        wrapfig
        xcolor
        fancyhdr
        floatrow
        eso-pic
        transparent
        lettrine
        polyglossia
        enumitem
        titlesec
        montserrat
        units
        tabulary
      ]);
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
