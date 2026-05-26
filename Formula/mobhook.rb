class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.1/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "9be99940c2437647d29a8849f092416953fcacdc9d2bd38bac0fafa6ebbc55b8"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.1/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "364fc6afa7dafcd7456225f955b7ad298be7055e72b643f7ac0c8270b417e1e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.1/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c34bea8a63a402075c04cef6287f9d551680b021d57ee74e987d4b2065cd075"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.1/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2de149a79f33b9b904a58b228b3ef054c5eef1d8ac56ddb4894f26d67b64748"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match "mobhook", shell_output("#{bin}/mobhook --version")
  end
end
