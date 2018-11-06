class Embree3 < Formula
  desc "Embree Ray Tracing Library"
  homepage "http://embree.github.io/"
  url "https://github.com/embree/embree/releases/download/v3.2.4/embree-3.2.4.x86_64.macosx.tar.gz"
  version "3.2.4"
  sha256 "74324b928ebf6b263e5b18d30c202a46016e094727a84de4a916eabfe2a2947c"

  def install
    lib.install Dir["lib/libembree3.3.dylib"]
    include.install Dir["include/*"]
    system "ln", "-s", (lib/"libembree3.3.dylib"), (lib/"libembree3.dylib")
  end

end
