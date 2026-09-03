class Advcode < Formula
  desc "advcode - the AI coding agent that learns from experience"
  homepage "https://github.com/goldenswordgt-ctrl/advcode"
  url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.3.1/advcode-darwin-arm64.tar.gz"
  sha256 "c26d0103c6e4a722506e83edd8a7933d09d517a01e716a6c832341bfa78bac81"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.3.1/advcode-darwin-arm64.tar.gz"
      sha256 "c26d0103c6e4a722506e83edd8a7933d09d517a01e716a6c832341bfa78bac81"
    end
  end

  def install
    bin.install "advcode"
  end

  test do
    assert_match "advcode", shell_output("#{bin}/advcode --help")
  end
end
