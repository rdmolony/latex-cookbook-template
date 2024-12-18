# Latex Recipe Cookbook Template

> [!WARNING]
> I found this beautiful template on [Overleaf](https://www.overleaf.com/latex/templates/recipe-book/pqfjxcxnpyps) created by Baptiste Le Roi with a `LaTeX Project Public License 1.3c`
> 
> If you find this Baptiste, please get in touch :wink:

A `Latex` template for creating your own cookbook of recipes & an accompanying `nix flake` environment to make it easy to install, use & extend


---


## Install

- Install `nix` via ...


  - [`DeterminateSystems/nix-installer`](https://github.com/DeterminateSystems/nix-installer) ...

  ```sh
  curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
  ```


---


## Render a `pdf`

Via ...


- [`VSCode`](https://code.visualstudio.com/download) with extension [`James-Yu/LaTeX-Workshop`](https://github.com/James-Yu/LaTeX-Workshop)

  - Open your `.tex` file
  - Run `Build Latex Project`


- `nix` directly

```sh
nix run .#latexmk -- \
  -synctex=1 \
  -interaction=nonstopmode \
  -file-line-error \
  -lualatex \
  -output-directory=./out \
  ./Recettes.tex
```

  ... to build & activate this developer environment


---


## Develop

Create a developer environment (in which all dependencies are installed) via ...

- `nix` directly ...

```sh
nix develop
```

- Automatically via `direnv` (or [nix-community/nix-direnv](https://github.com/nix-community/nix-direnv)) **to activate this environment automatically on `cd`'ing to this directory**
