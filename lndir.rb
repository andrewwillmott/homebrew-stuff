class Lndir < Formula
  desc "Link directory trees"
  homepage "https://github.com/andrewwillmott/lndir"
  url "https://github.com/andrewwillmott/lndir/archive/1.0.tar.gz"
  version "1"
  sha256 "108b90243c50fd417613733e5448c9bf9188abee0d36a4db26972a0221fa0255"
 
  def install
    system "make"
    bin.install("lndir")
    man1.install("lndir.1")
  end
end
