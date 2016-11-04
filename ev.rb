class Ev < Formula
  desc "Expression evaluator"
  homepage "https://github.com/andrewwillmott/ev"
  url "https://github.com/andrewwillmott/ev/archive/feb89e959cdfc6ba5aa2bdd7d36395a20cbba416.tar.gz"
  version "1"
  sha256 "576ce34d42a500ebd65263ec91fc739a999111ea85b5036ae7fc77d48da4c281"

  def install
    system "c++", "CLExpr.cpp", "EV.cpp", "-o", "ev"
    bin.install("ev")
  end

  test do
    system "ev", "1 + 2 * 3 / 4"
  end
end
