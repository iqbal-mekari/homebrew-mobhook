class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.0/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "ba7741973e07c367c8020c851fe140eba2a84b090afa6e07372e0bad32562186"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.0/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "e92efc1f93be77faf581567607d4205dfe79d791732b013861959b5b62aaa2fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.0/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba34b9c953ef060d857bfe13dd82418602d30c91579db2236d88d0258ca05fc0"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.4.0/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8a22637e1dcacba1f19d3f7b3089fa36b623ffcfa34e2a27e083e9adab520ad"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mobhook --version")
  end
end
