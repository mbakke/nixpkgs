{ stdenv, lib, buildGoPackage, fetchgit }:

buildGoPackage rec {
  name = "oh-${version}";
  version = "20160714-${stdenv.lib.strings.substring 0 7 rev}";
  rev = "a4133507a30c70e8609fb7491ccd982d0e3d4f50";

  goPackagePath = "github.com/michaelmacinnis/oh";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/michaelmacinnis/oh";
    sha256 = "0w3gnnanqxbii7gsgzy5p75y88mj83i76s8qn6jz04d09va9pimc";
  };

  goDeps = ./deps.json;
}
