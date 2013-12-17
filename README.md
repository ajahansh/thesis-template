Thesis-template
===============

A LuaLaTeX template for PhD thesis based on `memoir`

In order to compile the project run these three commands in a shell environment:
```
biber main
makeglossaries main
lualatex --shell-escape main
```
Alternatively one can run the `lualatex_fast.ps1` file in windows powershell.

Notes
------------------
* An up to date `Miktex` or `Texlive` is necessary. Also make sure
that the executable directory, e.g.,`C:\texlive\2013\bin`, is in your `PATH`.
In windows this can be checked by finding the `PATH` environment variable.

* `--shell-escape` is only necessary if you want to include syntax highlighted
source codes. `pygments` package in `Python` is responsible for that. Make
sure that both are installed and are available in your `PATH` environment 
varialbe. In case no source code is needed comment the `minted` package
line in `preamble.tex` and remove `--shell-escape` as well.
