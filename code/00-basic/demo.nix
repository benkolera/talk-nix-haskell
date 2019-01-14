{ mkDerivation, aeson, base, http-client, servant, servant-client
, servant-server, stdenv, tasty, tasty-discover, tasty-hunit, text
, transformers, wai, warp
}:
mkDerivation {
  pname = "demo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base http-client servant servant-client servant-server text
    transformers wai
  ];
  executableHaskellDepends = [ base warp ];
  testHaskellDepends = [
    base http-client tasty tasty-hunit transformers
  ];
  testToolDepends = [ tasty-discover ];
  description = "Demo App";
  license = stdenv.lib.licenses.mit;
}
