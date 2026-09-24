class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.106.tar.gz"
  sha256 "8ea870a69b4f495c82b39acceadfa6eb509de4f17e784a79738ea3929cd143b0"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "619391f6a2fed79a6a125a98c0aa9399c6b5db14b21cbcd4869658f057177c25"
    sha256 cellar: :any_skip_relocation, sonoma: "bd098e053c21a5db0fb08788d51d77b79a02513d8a07c9f6ef43d0b9f353dfb8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "134df07b49814ad178f8702c2608bdfe9fe4bb104f935cebfc6f182adc28edf3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
