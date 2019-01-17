class Distocc < Formula
  desc "Tool for generating (signed) distance and approximate AO fields"
  homepage "https://github.com/andrewwillmott/distance-occlusion"
  url "https://github.com/andrewwillmott/distance-occlusion/archive/master.tar.gz"
  version "2"
  sha256 "491456470cc22f439704e278bf024f3e3f9fbaa3809548e1a0c949295401904a"

  def install
    system "c++", "-std=c++11", "-O3", "-DNDEBUG", "DistanceOcclusionLib.cpp", "DistanceOcclusionTool.cpp", "-o", "distocc"
    bin.install("distocc")
  end

  test do
    system "distocc", "-s"
    system "open", "signed-distances.png"
  end
end
