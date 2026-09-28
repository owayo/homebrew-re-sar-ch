class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.110/resarch-aarch64-apple-darwin.tar.gz"
      sha256 "a70e805073d4e8a57f66be10a2b67f5c4bc130583f1cf604c1c9c13efb47b074"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.110/resarch-x86_64-apple-darwin.tar.gz"
      sha256 "7de9f8814f41e66f76e7ae3013045ee3d131609063565f4693a6b0e835dfc5fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.110/resarch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30a3158665d75919e171fca4e87d1af26c2817e65aaf459b4d2257af03cf8358"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.110/resarch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9d28377bf9d1f045865de015e024769c27d89a4a350881716da29c226e2f2a1"
    end
  end

  def install
    bin.install "resarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/resarch --version")
  end
end
