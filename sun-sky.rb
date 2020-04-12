class SunSky < Formula
  desc "Tool for creating sky environments"
  homepage "https://github.com/andrewwillmott/sun-sky"
  url "https://github.com/andrewwillmott/sun-sky/archive/master.tar.gz"
  version "3"
  sha256 "5bdb404bafe35f3ce1d554fd95e79536daa4a7d7bb1553b13505954f8ce091ed"

  def install
    system "c++", "--std=c++11", "SunSky.cpp", "SunSkyTool.cpp", "-o", "sunsky" # if this fails, try separate make/make install steps
    bin.install("sunsky")
  end

  test do
    system "sun-sky", "-t", "12", "-s", "hosekBRDF", "-r", "0.3"
  end
end
