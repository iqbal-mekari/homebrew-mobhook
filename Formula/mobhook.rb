class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.0/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "SHA256_PLACEHOLDER_ARM_MAC"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.0/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "SHA256_PLACEHOLDER_X64_MAC"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.0/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "SHA256_PLACEHOLDER_ARM_LINUX"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.1.0/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "SHA256_PLACEHOLDER_X64_LINUX"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match "mobhook", shell_output("#{bin}/mobhook --version")
  end
end
