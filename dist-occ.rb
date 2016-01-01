class DistanceOcclusion < Formula
  desc "Tool for "
  homepage "https://github.com/andrewwillmott/distance-occlusion"
  url "https://github.com/andrewwillmott/distance-occlusion/archive/master.tar.gz"
  version "1"
  sha256 ""

  def install
    system "c++", "-D", "USE_TGA=1", "-D", "USE_OBJ=1", "DistanceOcclusionLib.cpp", "DistanceOcclusionTest.cpp", "MeshSupport.cpp", "targa.c", "-o", "dist-occ"
    Dir.mkdir("#{bin}")
    cp("occlude", "#{bin}/dist-occ")
  end

  test do
    system "dist-occ", "-d", "-x"
  end
end
