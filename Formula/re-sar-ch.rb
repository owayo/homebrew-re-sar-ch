class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.108/resarch-aarch64-apple-darwin.tar.gz"
      sha256 "a2ea8c70685b1f38758875ba37e28139312227dbf7f632bc1e24c141ff8017c8"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.108/resarch-x86_64-apple-darwin.tar.gz"
      sha256 "4d795456d05e1c1f579d617c464184d8a9a7d405e7062c60c7311c4c27b278ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.108/resarch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22984683ce09eca22ebb2f3ea6b98336a316824cb2e65f845f754ac5fdd25550"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.108/resarch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71a168877eb73e2ecb060ca5afa6ebf4950a86ccf8dd2ffaae95d9939405e571"
    end
  end

  def install
    bin.install "resarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/resarch --version")
  end
end
