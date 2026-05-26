class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.2.0/zyquo-0.2.0-macos-arm64.tar.gz"
  sha256 "4219b64c364587af3eb036b12e0092040dacaa7868db88927b1d09d7c957f02c"
  version "0.2.0"
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
