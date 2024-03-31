{ mkDerivation, base, containers, exceptions, lens, template-haskell, text, bytestring
, lib, systemDeps, buildExamples, ...
}:
mkDerivation {
  pname = "h-raylib";
  version = "5.1.1.0";
  src = ./.;
  isLibrary = true;
  c = null;
  isExecutable = buildExamples;
  configureFlags = ["-fplatform-nixos"] ++ lib.optional buildExamples ["-fexamples"];
  libraryHaskellDepends = [ base containers exceptions lens template-haskell text bytestring ];
  librarySystemDepends = systemDeps;
  description = "Raylib bindings for Haskell";
  license = lib.licenses.asl20;
}
