class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.7.0/zyquo-0.7.0-macos-arm64.tar.gz"
  sha256 "aff57a247fbbdb58f5febe5e339d39c23c3af61ea718058a6a870526bc42eebb"
  version "0.7.0"
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
