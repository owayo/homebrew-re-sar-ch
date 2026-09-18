class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.103.tar.gz"
  sha256 "e3c9fd16de9e1e7912e79ac9b5523f996bdf0ef2f68f055100cbdff289a7175c"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1b44cbde964a7e4542575f7b852d0a1940b4a95ab2661d1af4ebbc2621ca83b6"
    sha256 cellar: :any_skip_relocation, sonoma: "34d79122ae049c5e7e2f2de6d668e74fe132fa02523c78eba0fc3a29f26e9e63"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d0c6576491bb3b12dd4f1464d0ed3e8078dacf4bc77dfec12ffdf731a776aba7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
