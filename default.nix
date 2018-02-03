{ mkDerivation, base, bytestring, containers, deepseq, doctest
, hashable, hedgehog, lens, mtl, QuickCheck, reflex, reflex-dom
, reflex-dom-core, spiros, stdenv, tasty, tasty-hedgehog
, tasty-quickcheck, text, transformers, unordered-containers, vinyl
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
}
