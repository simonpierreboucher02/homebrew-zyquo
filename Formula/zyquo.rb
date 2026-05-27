class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.7.1/zyquo-0.7.1-macos-arm64.tar.gz"
  sha256 "3ea4401c3def5effaaa2ec95e6a3ba372f481265486fbe3cf4058f056e88137d"
  version "0.7.1"
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
