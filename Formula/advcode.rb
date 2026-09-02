class Advcode < Formula
  desc "advcode - the AI coding agent that learns from experience"
  homepage "https://github.com/goldenswordgt-ctrl/advcode"
  url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.2.0/advcode-darwin-arm64.tar.gz"
  sha256 "820eae2cbc1ef5d9b992a37a99027e4b414995380d430766a0553d543432888b"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.2.0/advcode-darwin-arm64.tar.gz"
      sha256 "820eae2cbc1ef5d9b992a37a99027e4b414995380d430766a0553d543432888b"
    end
  end

  def install
    bin.install "advcode"
  end

  test do
    assert_match "advcode", shell_output("#{bin}/advcode --help")
  end
end
