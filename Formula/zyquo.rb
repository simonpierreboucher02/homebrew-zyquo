class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.0.0/zyquo-1.0.0-macos-arm64.tar.gz"
  sha256 "7907e74f6a9a3d3396f924ee81574180371d5cac06792897ec6a1d5904430ef8"
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
