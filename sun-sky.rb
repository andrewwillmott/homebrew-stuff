class SunSky < Formula
  desc "Tool for creating sky environments"
  homepage "https://github.com/andrewwillmott/sun-sky"
  url "https://github.com/andrewwillmott/sun-sky/archive/master.tar.gz"
  version "1"
  sha256 "2465796ad7fbd457d917eea5c887c4272bb67326a4d01180a74836dfd4977f5c"

  def install
    system "c++", "SunSky.cpp", "SunSkyTest.cpp", "-o", "sun-sky" # if this fails, try separate make/make install steps
    Dir.mkdir("#{bin}")
    cp("sun-sky", "#{bin}/sun-sky")
  end

  test do
    system "sun-sky", "-t", "12", "-s", "clearUtahBRDF", "-r", "0.3"
  end
end
