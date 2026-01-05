class Zelph < Formula
    desc "A sophisticated semantic network system for logical reasoning"
    homepage "https://zelph.org"
    url "https://github.com/acrion/zelph/releases/download/v0.9.2/zelph-macos.zip"
    sha256 "85199f378a14e5e6b4d8bec52bac09a13ac428a55d93cb41e4c8412b3e811953"
    license "AGPL-3.0-or-later"
  
    def install
      libexec.install Dir["*"]
      system "install_name_tool", "-add_rpath", "@loader_path", libexec/"zelph"
      bin.install_symlink libexec/"zelph"
    end
  
    test do
      output = pipe_output("#{bin}/zelph", ".exit\n")
      assert_match "0.9.2", output
    end
  end
