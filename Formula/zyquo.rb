class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.5.1/zyquo-0.5.1-macos-arm64.tar.gz"
  sha256 "e6c12c62e50c5f79b64917236695a219fcc43d0357f76d4c1266db4da9dc8a2e"
  version "0.5.1"
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
