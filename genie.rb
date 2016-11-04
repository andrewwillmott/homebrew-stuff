class Genie < Formula
  desc "GENie, "
  homepage "https://github.com/bkaradzic/genie"
  url "https://github.com/bkaradzic/genie/archive/97d06541aef5b798b76fbd19230c8c64f05aa187.tar.gz"
  version "703"
  sha256 "1c38a9399d16417358846a54742d2f39a3f2d5616435cfbe2a6d2e4862159b2d"

  def install
    system "make"
    bin.install("bin/darwin/genie")
  end

  test do
    system "#{bin}/genie", "--version"
  end
end
