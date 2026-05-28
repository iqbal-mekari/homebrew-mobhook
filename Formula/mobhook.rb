class Mobhook < Formula
  desc "Mobile-first git hooks manager"
  homepage "https://github.com/iqbal-mekari/mobhook"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.3.0/mobhook-aarch64-apple-darwin.tar.gz"
      sha256 "588f438357748dca20bf707ad555af762bf59d467b7b211943f840b40ea45650"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.3.0/mobhook-x86_64-apple-darwin.tar.gz"
      sha256 "7453bd9aba2ca621f162e04c1e663ec6c2be55d3b8c7acc5f062f8ebebc82ecc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.3.0/mobhook-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87a0aaa57be2092ea392dc9c25de18068566fa0a0784f7bf05cd0ba6c8811490"
    else
      url "https://github.com/iqbal-mekari/mobhook/releases/download/v0.3.0/mobhook-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d0f3d627b57692c1ccac5e7e16b6982757533ee30fb8aa8d397ddbb388ff0dd"
    end
  end

  def install
    bin.install "mobhook"
  end

  test do
    assert_match "mobhook", shell_output("#{bin}/mobhook --version")
  end
end
