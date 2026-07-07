class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.7/zelph-macos.zip"
    sha256 "b62b82ba7bd630afa09fd45ba13eb6e28b06118e54a9a653e84da027a7852c7d"
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
