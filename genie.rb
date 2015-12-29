class Genie < Formula
  desc "GENie, "
  homepage "https://github.com/bkaradzic/genie"
  url "https://github.com/bkaradzic/genie/archive/898dae0cf22a0b4920abc6d4320f1edf740d6449.tar.gz"
  version "354"
  sha256 "d45a633b67666c95a714cb7c587ddc058b15bacf27fe86ece96a451d9dbf9661"

  def install
    system "make"
    Dir.mkdir("#{bin}")
    cp("bin/darwin/genie", "#{bin}/genie")
  end

  test do
    system "#{bin}/genie", "--version"
  end
end
