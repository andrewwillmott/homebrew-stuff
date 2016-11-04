class Genie < Formula
  desc "GENie, "
  homepage "https://github.com/bkaradzic/genie"
  url "https://github.com/bkaradzic/genie/archive/97d06541aef5b798b76fbd19230c8c64f05aa187.tar.gz"
  version "703"
  sha256 "82a41a6a24190b6b0a9042136ae96ac468a6d148e38931cdd5a172bbd046e376"

  def install
    system "make"
    bin.install("bin/darwin/genie")
  end

  test do
    system "#{bin}/genie", "--version"
  end
end
