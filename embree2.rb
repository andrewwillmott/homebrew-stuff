class Embree2 < Formula
  desc "Embree Ray Tracing Library"
  homepage "http://embree.github.io/"
  url "https://github.com/embree/embree/releases/download/v2.17.6/embree-2.17.6.x86_64.macosx.tar.gz"
  version "2.17.6"
  sha256 "c3258f99f5595b79f54d16b0dace1c33cf24494a42a6b36a19f85b7f751c3d27"

  def install
    lib.install Dir["lib/libembree.2.dylib"]
    include.install Dir["include/*"]
    system "ln", "-s", (lib/"libembree.2.dylib"), (lib/"libembree.dylib")
  end

end
