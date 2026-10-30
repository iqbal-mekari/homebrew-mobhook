class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.1/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "c43f327977098fd77812e72f9a0d98d5c72c55b69f7551752d9e3864e4433bcd"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.1/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "1a73c1d83a7a69f4cd60d12ede545725704a8712300b3668392e2af1fd26a2d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.1/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "541dafa512d6d026bbb7f837f2715bbc89bc2c2765e677a712f3972508f2cade"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.1/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73bcb0b54719f85af6ab8cede3fb111ee0f0965861df2cfd6fb5dbb1249efefc"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mobhook --version")
  end
end
