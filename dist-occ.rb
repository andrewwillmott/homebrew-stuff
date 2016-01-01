class DistOcc < Formula
  desc "Tool for generating distance and approximate AO"
  homepage "https://github.com/andrewwillmott/distance-occlusion"
  url "https://github.com/andrewwillmott/distance-occlusion/archive/master.tar.gz"
  version "1"
  sha256 "939985926abd6b70eeacbd414912b8ae5631eb30a12f473f86e725bf76d85ac1"

  def install
    system "c++", "-D", "USE_TGA=1", "-D", "USE_OBJ=1", "DistanceOcclusionLib.cpp", "DistanceOcclusionTest.cpp", "MeshSupport.cpp", "targa.c", "-o", "dist-occ"
    bin.install("dist-occ")
  end

  test do
    system "dist-occ", "-d", "-x"
    system "open", "dist.tga"
  end
end
