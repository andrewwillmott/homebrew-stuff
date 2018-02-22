class Ev < Formula
  desc "Expression evaluator"
  homepage "https://github.com/andrewwillmott/ev"
  url "https://github.com/andrewwillmott/ev/archive/dbe8d439bbcc6953407b10e2f2dfe9d76af96506.tar.gz"
  version "2"
  sha256 "576ce34d42a500ebd65263ec91fc739a999111ea85b5036ae7fc77d48da4c281"

  def install
    system "c++", "CLExpr.cpp", "EV.cpp", "-o", "ev"
    bin.install("ev")
  end

  test do
    system "ev", "1 + 2 * 3 / 4"
  end
end
