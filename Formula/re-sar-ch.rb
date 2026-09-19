class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  url "https://github.com/owayo/re-sar-ch/archive/refs/tags/v26.9.104.tar.gz"
  sha256 "a09b8108109e5bacb124e1b1fd4f8d4eed45af359a9d7e53e1132fd6763fa44e"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7a1c6c85dcdf58dfbb504fe7f02afb7913d84cee61d001d8132d26947bc4c430"
    sha256 cellar: :any_skip_relocation, sonoma: "82d9e7f54646053ba669987e5e94f65a4c3ded9bd3677949f4c18adbb5ac4031"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "201cb066f01cdc9d128f0e63dd0bc07ae837ba89abec4d3679294d08eba34d22"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--bin", "resarch"
  end

  test do
    system "#{bin}/resarch", "--version"
  end
end
