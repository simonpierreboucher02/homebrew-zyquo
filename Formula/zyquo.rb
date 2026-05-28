class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime with ZTP tool integration"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.0.0/zyquo-1.0.0-macos-arm64.tar.gz"
  sha256 "73b1dc8fb91e4f08ab2748dd15cbd9cb4d6205bf7d9c7df8d0b7be61a17004e6"
  version "1.0.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "zyquo"
  end

  test do
    assert_match "Zyquo", shell_output("#{bin}/zyquo version")
  end
end
