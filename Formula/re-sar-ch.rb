class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.105.tar.gz"
  sha256 "e52aabf897c336995850050b20bafe4b1ac2bab8eed0ff9ada993d563bb47019"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "aba9c486380f26f53a91d71c911c4e49e0ba441566e127ea9497373e4e0fc5c8"
    sha256 cellar: :any_skip_relocation, sonoma: "e45d7c4f81be6ea8b72949d3a71d55311e8a2cffe65ba9e81537166b9821f6ec"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f889dd4850eff88f9a425d8366e9d52af9bc7e4f85699f3356b9bc79e3cd4ea4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
