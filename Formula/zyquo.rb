class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.5.0/zyquo-0.5.0-macos-arm64.tar.gz"
  sha256 "cd205cf6051463866a8be237a7aaa2442cc711950199c87e15aa0b9318664b4b"
  version "0.5.0"
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
