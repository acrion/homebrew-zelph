class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.5/zelph-macos.zip"
    sha256 "134081c3e5eb0a261f93b743290f9f5cccab5d56539a2386233b00dd14411a02"
    license "AGPL-3.0-or-later"
  
    def install
      libexec.install Dir["*"]
      system "install_name_tool", "-add_rpath", "@loader_path", libexec/"zelph"
      bin.install_symlink libexec/"zelph"
    end
  
    test do
      system libexec/"zelph_tests"
    end
  end
