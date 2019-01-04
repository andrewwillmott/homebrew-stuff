class Cblutgen < Formula
  desc "Tool for generating and applying various colour blindness-related LUTs"
  homepage "https://github.com/andrewwillmott/colour-blind-luts"
  url "https://github.com/andrewwillmott/colour-blind-luts/archive/master.tar.gz"
  version "1"
  sha256 "870c6a41fbf116884e2c9ed0fe09203967d4ad499cd3c8a7e08f748d45865454"

  def install
    system "c++", "-std=c++11", "CBLuts.cpp", "ColourMaps.cpp", "CBLutGen.cpp", "-o", "cblutgen"
    bin.install("cblutgen")
  end

  test do
    system "cblutgen", "-p", "-y"
    system "open", "protanope_correct_lut.png"
  end
end
