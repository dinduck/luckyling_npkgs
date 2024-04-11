{
  stdenv,
  lib,
  fetchFromGitHub,
  SDL2,
}:
stdenv.mkDerivation {
  pname = "fake86";
  version = "2.0.0";
  src = fetchFromGitHub {
    owner = "lgblgblgb";
    repo = "fake86";
    rev = "d275349e50d2717897a38790459a4bc952ea4911";
    sha256 = "sha256-H9kWtnLQ4A3RsQZO00XuFeRx9tyKWB49AFau50zHiqE=";
  };

  nativeBuildInputs = [
    SDL2
  ];
  buildInputs = [
  ];
  installPhase = ''
    mkdir -p $out/bin
    strip bin/fake86
    cp bin/fake86 $out/bin
    cp bin/data/asciivga.dat bin/data/pcxtbios.bin bin/data/videorom.bin bin/data/rombasic.bin $out/bin
  '';

  meta = {
    description = "Fake86: A portable, open-source 8086 PC emulator.";
    homepage = "https://github.com/lgblgblgb/fake86";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [];
  };
}
