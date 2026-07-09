class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.8/zelph-macos.zip"
    sha256 "90e939633b6acf4a93364bac40e704c9d0bf424566d7dd58327897e20b2e7abd"
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
