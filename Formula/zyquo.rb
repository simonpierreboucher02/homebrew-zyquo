class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime with ZTP tool integration"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.0.0/zyquo-1.0.0-macos-arm64.tar.gz"
  sha256 "ed2227a9c58c816d4acf258d9f871e8f3a1ffdcf8930daa03a430f064ddd44c2"
  version "1.0.0"
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
