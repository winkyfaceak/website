{
  go,
  air,
  gopls,
  typos,
  dart-sass,
  callPackage,
}:
let
  mainPkg = callPackage ./default.nix { };
in
mainPkg.overrideAttrs (oa: {
  nativeBuildInputs = [
    go
    air
    gopls
    typos
    dart-sass
  ] ++ (oa.nativeBuildInputs or [ ]);
})
