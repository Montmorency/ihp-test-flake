{ mkDerivation, base, bytestring, colour, containers, criterion
, deepseq, directory, dlist, fgl_5_8_1_1 , fgl-arbitrary, filepath, graphviz
, hspec, hspec-discover, lib, mtl, polyparse, process, QuickCheck
, temporary, text, wl-pprint-text
}:
mkDerivation {
  pname = "graphviz";
  version = "2999.20.1.0";
  sha256 = "5ae428c3cda1eee205c9960504f490afa683a756ebbd1c710210a291d6eb1f50";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring colour containers directory dlist fgl_5_8_1_1 filepath mtl
    polyparse process temporary text wl-pprint-text
  ];
  testHaskellDepends = [
    base containers fgl_5_8_1_1 fgl-arbitrary filepath hspec QuickCheck text
  ];
  testSystemDepends = [ graphviz ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [ base criterion deepseq text ];
  homepage = "https://github.com/ivan-m/graphviz";
  description = "Bindings to Graphviz for graph visualisation";
  license = lib.licenses.bsd3;
}
