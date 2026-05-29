class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime with ZTP tool integration"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.2.0/zyquo-1.2.0-macos-arm64.tar.gz"
  sha256 "e5f8bec5c1b4c170b8c45aa96bfa3ef828d84af2b5ff9cabe144e413f881e3ac"
  version "1.2.0"
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
