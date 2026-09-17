class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.102.tar.gz"
  sha256 "41df22a35da9ef3d42993b669a021e9370b60804bb6a19590fed13982ecfb121"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "defe7fccb26113aa7f01b9a8d771c6dd26024638b26aeb89b2f274282bec1790"
    sha256 cellar: :any_skip_relocation, sonoma: "03fd9488284c80f023ae3f425b5d1ca998213a48f3d4485ff2adc38176d9d25b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "07c95758dc8f10b6cd6c2c97165bf0244805f98244419cdb86d02a9febf2cbd5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
