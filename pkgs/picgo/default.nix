{
  appimageTools,
  fetchurl,
  makeDesktopItem,
}:
appimageTools.wrapType2 {
  name = "picgo";
  src = fetchurl {
    url = "https://github.com/Molunerfinn/PicGo/releases/download/v2.4.0-beta.6/PicGo-2.4.0-beta.6.AppImage";
    hash = "sha256-hpsJSAaIfLZVa2fghV0oxhx509RBVfI+YqSdfo4fJw4=";
  };
  desktopItems = [
    (makeDesktopItem {
      name = "PicGo";
      desktopName = "PicGo";
      comment = "New Experience of Pictures Uploading and Management";
      icon = "PicGoLogo";
      exec = "picgo";
      terminal = false;
      categories = ["Utility"];
      startupNotify = true;
    })
  ];
}
