class Genie < Formula
  desc "GENie, "

  # To update: go to https://github.com/bkaradzic/GENie, scroll down to
  # "Download(stable)", update version below accordingly, and update the commit
  # ID before .tar.gz in the URL

  homepage "https://github.com/bkaradzic/genie"
  url "https://github.com/bkaradzic/genie/archive/75f665a4092172b075c3599c20a532510a1bdf1d.tar.gz"
  version "1065"
  sha256 "a8c96cb1985c62f5664a3ef8294eb5dd1886611581edd4ec58d99509a6080e58"

  def install
    system "make"
    bin.install("bin/darwin/genie")
  end

  test do
    system "#{bin}/genie", "--version"
  end
end
