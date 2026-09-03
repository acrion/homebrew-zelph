class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v1.0.0/zelph-macos.zip"
    sha256 "25b1b8d10930fc9e131a8a88406083d6b6af3e52f8b59fbdb75940c2f59fe061"
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
