class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.109/resarch-aarch64-apple-darwin.tar.gz"
      sha256 "f711eb4fc1928f1160c44f93a9542836a44d5e296cdb3038609ba5f5353d318e"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.109/resarch-x86_64-apple-darwin.tar.gz"
      sha256 "582e0866ef2ecdcb9f0dc6e922a389b1318da02c0ada85a0b327a0b6dec371e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.109/resarch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "064d64ffc0969e2c74798c9e3edcaaf3dcc8348a8eda82e5dfe193dc18ce4977"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.109/resarch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7002ab7fdb4f59b4a2b28650017ec0518acbee4b60ff5cb17c05b4ece383a0ec"
    end
  end

  def install
    bin.install "resarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/resarch --version")
  end
end
