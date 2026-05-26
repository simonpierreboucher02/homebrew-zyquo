class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.4.0/zyquo-0.4.0-macos-arm64.tar.gz"
  sha256 "92df89a43532a5ec7212ff678763f76b9b2ab15c71040f1f8046e51f12c19462"
  version "0.4.0"
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
