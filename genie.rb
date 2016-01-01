class Genie < Formula
  desc "GENie, "
  homepage "https://github.com/bkaradzic/genie"
  url "https://github.com/bkaradzic/genie/archive/898dae0cf22a0b4920abc6d4320f1edf740d6449.tar.gz"
  version "354"
  sha256 "cb87b3617de71be16a183c2a5291cc860bb866862939d2bb12cf0534428a91ab"

  def install
    system "make"
    bin.install("bin/darwin/genie")
  end

  test do
    system "#{bin}/genie", "--version"
  end
end
