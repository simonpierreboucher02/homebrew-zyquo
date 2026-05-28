class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime with ZTP tool integration"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v1.0.0/zyquo-1.0.0-ztp-macos-arm64.tar.gz"
  sha256 "dd135b26bf9d4b063ec61124f8e2b1d484e9504d15e53bf49b138f32987839ab"
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
