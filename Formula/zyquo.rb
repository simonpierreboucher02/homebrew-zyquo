class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.1.0/zyquo-0.1.0-macos-arm64.tar.gz"
  sha256 "c75b3487f61c6e9c5a03e9be914e3f40a1ecf87ad2ead57e79e375ddf6221f57"
  version "0.1.0"
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
