{
  lib,
  stdenv,
  fetchFromGitHub,
} @ args:
stdenv.stdenv.mkDerivation (finalAttrs: {
  pname = "fake86";
  version = "2.0.0";
  src = fetchFromGitHub {
    owner = "lgblgblgb";
    repo = "fake86";
    rev = "d275349e50d2717897a38790459a4bc952ea4911";
    sha256 = "sha256-m20M4+3zsH40hTpMJG9cyIjXp0xcCUBS+cCiRVLXFqM=";
  };

  nativeBuildInputs = [
  ];
  buildInputs = [
  ];

  meta = {
    description = "Fake86: A portable, open-source 8086 PC emulator.";
    homepage = "https://github.com/lgblgblgb/fake86";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [];
  };
})
