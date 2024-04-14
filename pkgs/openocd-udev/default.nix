{stdenv}:
stdenv.mkDerivation rec {
  name = "openocd-udev";
  src = ./.;
  installPhase = ''
    mkdir -p $out/lib/udev/rules.d
    cp my.rules $out/lib/udev/rules.d
  '';
}
