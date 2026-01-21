class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.4/zelph-macos.zip"
    sha256 "d4be100e6fb5a914ef4dc433387c0bc230e353f7ba46e18a6fbe1f8610d2df6d"
    license "AGPL-3.0-or-later"
  
    def install
      libexec.install Dir["*"]
      system "install_name_tool", "-add_rpath", "@loader_path", libexec/"zelph"
      bin.install_symlink libexec/"zelph"
    end
  
    test do
      output = pipe_output("#{bin}/zelph", ".exit\n")
      assert_match "interactive", output
    end
  end
