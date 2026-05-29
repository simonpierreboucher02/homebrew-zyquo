class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime with ZTP tool integration"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.1.0/zyquo-1.1.0-macos-arm64.tar.gz"
  sha256 "58cd8c805cd6736ece5911f81a5e20f5b8363dd0882044bb4101db0603c3ad06"
  version "1.1.0"
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
