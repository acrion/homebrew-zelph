class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.9/zelph-macos.zip"
    sha256 "279a8fdc70d17c4fd511ac59b4927ecda6e99e44aa7ebde6e175e8bb6f78f355"
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
