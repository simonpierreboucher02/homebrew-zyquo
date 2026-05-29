class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime with ZTP tool integration"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.1.1/zyquo-1.1.1-macos-arm64.tar.gz"
  sha256 "d238eb1840055977b0730199591985d0311548b9dbfb73ed0378a39b19440d61"
  version "1.1.1"
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
