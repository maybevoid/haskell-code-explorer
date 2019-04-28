{ mkDerivation, aeson, attoparsec, base, blaze-html, bytestring
, cabal-helper, cereal, containers, data-default, deepseq
, directory, directory-tree, extra, fast-logger, file-embed
, filemanip, filepath, ghc, ghc-paths, haddock-library, hashable
, hspec, http-api-data, http-types, IntervalMap, lens, lens-aeson
, mime-types, mmap, monad-logger, mtl, optparse-applicative
, pagination, process, QuickCheck, servant, servant-server, stdenv
, syb, text, time, uniplate, unordered-containers, uri-encode
, vector, wai, wai-extra, wai-middleware-static, warp, wreq, zlib
}:
mkDerivation {
  pname = "haskell-code-explorer";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson attoparsec base blaze-html bytestring cabal-helper cereal
    containers deepseq directory directory-tree extra fast-logger
    filemanip filepath ghc ghc-paths haddock-library hashable
    IntervalMap monad-logger mtl process syb text uniplate
    unordered-containers vector
  ];
  executableHaskellDepends = [
    aeson base blaze-html bytestring cereal containers data-default
    deepseq directory fast-logger file-embed filemanip filepath
    haddock-library hashable http-api-data http-types IntervalMap lens
    lens-aeson mime-types mmap monad-logger mtl optparse-applicative
    pagination servant servant-server syb text time
    unordered-containers uri-encode vector wai wai-extra
    wai-middleware-static warp wreq zlib
  ];
  testHaskellDepends = [
    attoparsec base bytestring containers directory filepath hspec
    IntervalMap monad-logger process QuickCheck syb text uniplate
    unordered-containers vector
  ];
  description = "Web application for exploring and understanding Haskell codebases";
  license = stdenv.lib.licenses.mit;
}
