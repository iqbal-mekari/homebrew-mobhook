class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.2.0/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "a60665fdc7d7803304f444ddfd4d42a4b25be5022d58d4a1969a47cacc768f9e"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.2.0/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "84a8d965104761e22b1f6c697b2904c6a099ae62e944516d91e43b57ef170c6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.2.0/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59f5ad7907bb2eb21f13321ade04052c1832ea979a1d3d78f39eda389de10b03"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.2.0/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7b0ea68f032d6d502a8cd7171bf42a58827947aac6e21547aa7ca3fc9e27458"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match "mobhook", shell_output("#{bin}/mobhook --version")
  end
end
