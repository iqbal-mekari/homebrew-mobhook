class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.2/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "ada969a337553595b3326f9036f9b1b1d7deab8134a0f2567d16f7695e640052"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.2/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "cea3c619aa6c904c336814efcd35ef495518fb06cf8f5e0fe46007f861293d00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.2/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af0790202953ba0a506aea483b157563dbe18168c3bda21fbd07dd1414c05016"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.2/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0da2186a340346475e92184a794faa8d8e83ccc5a8c1dfcc10a813117824db8c"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mobhook --version")
  end
end
