class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.100.tar.gz"
  sha256 "58f1c3fc6e2574630d0de6d6a1a8f88ec85bc2f29655233b712c16616d7c6902"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f1977fdead443424607af188536ad72320b2a14f551b6dd96e04e51fe5b6d465"
    sha256 cellar: :any_skip_relocation, sonoma: "25eca54bc4a5d8ed200fdacc56105bed7d520cc74448e4834cdef9790dc6a673"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "50c86e1ba3483cf76e94d5a267640144dc759c6aa4365e3a18454807afcdc2b2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
