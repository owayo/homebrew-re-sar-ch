class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.101/resarch-aarch64-apple-darwin.tar.gz"
      sha256 "9e760012661103f62933cb4534bcf8d0b1e25bbcd0514286a347f7695f5c914c"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.101/resarch-x86_64-apple-darwin.tar.gz"
      sha256 "f6c8c247e4856729204d3d039ff910d94d05cb83e5995497a8d2320437d3ab3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.101/resarch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c025d28667ec2a3cfafbc6a24c75592ea7cdc601d25518eea7d7ba83c16eb3b4"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.101/resarch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a60c8355747bb1cabf668a31420f3ea2463ea08feaa8b1d4991458930bda2f6"
    end
  end

  def install
    bin.install "resarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/resarch --version")
  end
end
