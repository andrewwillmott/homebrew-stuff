class Distocc < Formula
  desc "Tool for generating (signed) distance and approximate AO fields"
  homepage "https://github.com/andrewwillmott/distance-occlusion"
  url "https://github.com/andrewwillmott/distance-occlusion/archive/master.tar.gz"
  version "2"
  sha256 "8532ae01fa82e6fa3b2b145f77b92dda616fcf033a6ea9f781d65fc7dd3c8ea5"

  def install
    system "c++", "-std=c++11", "-O3", "-DNDEBUG", "DistanceOcclusionLib.cpp", "DistanceOcclusionTool.cpp", "-o", "distocc"
    bin.install("distocc")
  end

  test do
    system "distocc", "-s"
    system "open", "signed-distances.png"
  end
end
