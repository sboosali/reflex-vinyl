{ nixpkgs ? import <nixpkgs> {}, compiler ? "default", doBenchmark ? false }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, bytestring, containers, deepseq
      , doctest, hashable, hedgehog, lens, mtl, QuickCheck, reflex
      , reflex-dom, reflex-dom-core, spiros, stdenv, tasty
      , tasty-hedgehog, tasty-quickcheck, text, transformers
      , unordered-containers, vinyl
      }:
      mkDerivation {
        pname = "reflex-vinyl";
        version = "0.0.0";
        src = ./.;
        isLibrary = true;
        isExecutable = true;
        libraryHaskellDepends = [
          base bytestring containers deepseq hashable lens mtl reflex
          reflex-dom reflex-dom-core spiros text transformers
          unordered-containers vinyl
        ];
        executableHaskellDepends = [ base ];
        testHaskellDepends = [
          base doctest hedgehog QuickCheck tasty tasty-hedgehog
          tasty-quickcheck
        ];
        homepage = "http://github.com/sboosali/reflex-vinyl#readme";
        description = "Convenience records for FRP Events and DOM Events";
        license = stdenv.lib.licenses.bsd3;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  drv = variant (haskellPackages.callPackage f {});

in

  if pkgs.lib.inNixShell then drv.env else drv
