class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.8.0/zyquo-0.8.0-macos-arm64.tar.gz"
  sha256 "304e525489fb56cafce5e85f2ba4656d9a14455f693f969e7dce8597e35da433"
  version "0.8.0"
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
