class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.3.0/zyquo-0.3.0-macos-arm64.tar.gz"
  sha256 "e06751d06e0371443d77e62f68f41c5d45e576b8f9c990c55b9be2e4e917e33c"
  version "0.3.0"
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
