class Ev < Formula
  desc "Expression evaluator"
  homepage "https://github.com/andrewwillmott/ev"
  url "https://github.com/andrewwillmott/ev/archive/dbe8d439bbcc6953407b10e2f2dfe9d76af96506.tar.gz"
  version "2"
  sha256 "0bcb1fe518affe50b96cf59b2c607294110c247d925d9191bc45764a918a5072"
 
  def install
    system "c++", "CLExpr.cpp", "EV.cpp", "-o", "ev"
    bin.install("ev")
  end

  test do
    system "ev", "1 + 2 * 3 / 4"
  end
end
