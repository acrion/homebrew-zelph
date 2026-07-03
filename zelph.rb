class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.6/zelph-macos.zip"
    sha256 "32b7e433c9538b2c2297746cc919d4edf41582f5f084122b2f63706707ace3cc"
    license "AGPL-3.0-or-later"

    def install
      libexec.install Dir["*"]
      system "install_name_tool", "-add_rpath", "@loader_path", libexec/"zelph"
      bin.install_symlink libexec/"zelph"
    end

    # test do
    #   system libexec/"zelph_tests"
    # end
  end
