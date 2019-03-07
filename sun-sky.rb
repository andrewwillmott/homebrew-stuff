class SunSky < Formula
  desc "Tool for creating sky environments"
  homepage "https://github.com/andrewwillmott/sun-sky"
  url "https://github.com/andrewwillmott/sun-sky/archive/master.tar.gz"
  version "2"
  sha256 "25961b3b090d7ed9d34498a29ccb6e9896f60adc9954a7b6391a8862acecefbe"

  def install
    system "c++", "--std=c++11", "SunSky.cpp", "SunSkyTool.cpp", "-o", "sunsky" # if this fails, try separate make/make install steps
    bin.install("sunsky")
  end

  test do
    system "sun-sky", "-t", "12", "-s", "hosekBRDF", "-r", "0.3"
  end
end
