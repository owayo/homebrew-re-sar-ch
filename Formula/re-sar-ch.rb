class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.100/resarch-aarch64-apple-darwin.tar.gz"
      sha256 "9cd26faa3006e68d45e2687f55c6a19d79043102de891b2c065c4f10fa8bc1ef"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.100/resarch-x86_64-apple-darwin.tar.gz"
      sha256 "4f002a2b53d2a84552fdb6b872e968eb002ce7f1fcbb8ae07be4ba9ce7437654"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.100/resarch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48af436022b6e95566d26a2c5dd7c270ebdaf3dd7de01438ecbbd7a3aafb33cc"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.10.100/resarch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "733f636ce490865c08ecd5ac45466f33fd10ab4286f75f79ca5aaa1593b8f49f"
    end
  end

  def install
    bin.install "resarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/resarch --version")
  end
end
