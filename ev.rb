class Ev < Formula
  desc "Expression evaluator"
  homepage "https://github.com/andrewwillmott/ev"
  url "https://github.com/andrewwillmott/ev/archive/849426d278af42043b41ca1f6ccef427c3195ea7.tar.gz"
  version "3"
  sha256 "0be5e84a04658ba4e91444cb231242bca7ad801769290a1d3366d494661e0378"
 
  def install
    system "c++", "-O3", "CLExpr.cpp", "EV.cpp", "-o", "ev"
    bin.install("ev")
  end

  test do
    system "ev", "1 + 2 * 3 / 4"
  end
end
