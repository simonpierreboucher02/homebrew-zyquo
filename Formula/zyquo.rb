class Zyquo < Formula
  desc "Native macOS AI terminal agent runtime"
  homepage "https://github.com/simonpierreboucher02/zyquo"
  url "https://github.com/simonpierreboucher02/zyquo/releases/download/v0.9.0/zyquo-0.9.0-macos-arm64.tar.gz"
  sha256 "d916cb80a3f08446f8c7d34767a4b56e09b5261ce26b45b5386f5db6916f29d9"
  version "0.9.0"
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
