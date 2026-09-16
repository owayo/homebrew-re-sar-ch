class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.101.tar.gz"
  sha256 "b63a6cb6457dfd5e6093d9133cb6a839c714a106fccaefaef0a66d3dccd0b4af"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f72bf57cf0381b730b84d733dd4e1cc33ec4db44432aef38744550ebaa74726a"
    sha256 cellar: :any_skip_relocation, sonoma: "6ecb6c8a615eb96443d020171baf08a21daf60d7804cca020cee316b56361957"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3845033e482189255b437bc239b6475d96c827d1120743959234b3653eaeb1a4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
