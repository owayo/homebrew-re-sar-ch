class ReSarCh < Formula
  desc "Standalone parser for sysstat sar binary data files"
  homepage "https://github.com/owayo/re-sar-ch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.107/resarch-aarch64-apple-darwin.tar.gz"
      sha256 "bb506f7e469c9428f32b4b7bcb8f3918608f1dc1e4e4193e406ffcedeaa8d775"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.107/resarch-x86_64-apple-darwin.tar.gz"
      sha256 "dfdc7e4f9f5818a80bbbafb14624356504d918311f911742c086e5e67d4a6fb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.107/resarch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a96582f4a26512faa5e894b83e8f0a39471f119c473f0df4e5dae2b4c38a780f"
    else
      url "https://github.com/owayo/re-sar-ch/releases/download/v26.9.107/resarch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "556196ce8a6f9e81bbaacedcf0007220ccfada4a738cca4fc4bec44a0fa6ba04"
    end
  end

  def install
    bin.install "resarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/resarch --version")
  end
end
