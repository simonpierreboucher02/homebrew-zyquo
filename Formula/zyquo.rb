class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.9.1/zyquo-0.9.1-macos-arm64.tar.gz"
  sha256 "74e1135d8cf57cd2aeab45dfddd777aaad026f2f5305d9769c218735a64a0340"
  version "0.9.1"
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
