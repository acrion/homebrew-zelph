class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v1.0.1/zelph-macos.zip"
    sha256 "8e3dbf61150201580de412764274382420cb96374f4fb19347ed4e0e4dc93d9d"
    license "AGPL-3.0-or-later"

    def install
      libexec.install Dir["*"]
      system "install_name_tool", "-add_rpath", "@loader_path", libexec/"zelph"
      bin.install_symlink libexec/"zelph"
    end

    test do
      system libexec/"zelph_tests", "--test-suite-exclude=slow"
    end
  end
