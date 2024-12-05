# Latex Recipe Cookbook Template

> [!WARNING]
> I found this beautiful template on [Overleaf](https://www.overleaf.com/latex/templates/recipe-book/pqfjxcxnpyps) created by Baptiste Le Roi with a `LaTeX Project Public License 1.3c`
> 
> If you find this Baptiste, please get in touch :wink:

A `Latex` template for creating your own cookbook of recipes & an accompanying `nix flake` environment to make it easy to install, use & extend

---

## Install

- Install `nix` via [DeterminateSystems/nix-installer](https://github.com/DeterminateSystems/nix-installer) or ...

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install
```

- Run ...

```sh
nix develop
```

... to build & activate this developer environment

- (Optional) Install `direnv` via [nix-community/nix-direnv](https://github.com/nix-community/nix-direnv) **to activate this environment automatically on `cd`'ing to this directory**
