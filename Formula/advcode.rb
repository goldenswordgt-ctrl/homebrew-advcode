class Advcode < Formula
  desc "advcode - the AI coding agent that learns from experience"
  homepage "https://github.com/goldenswordgt-ctrl/advcode"
  url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.1.0/advcode-darwin-arm64.tar.gz"
  sha256 "b4413ab7f1dc6a48ebd5f3f24dfae573dc3effbaec1976a9ade39164b1c938ad"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.1.0/advcode-darwin-arm64.tar.gz"
      sha256 "b4413ab7f1dc6a48ebd5f3f24dfae573dc3effbaec1976a9ade39164b1c938ad"
    end
  end

  def install
    bin.install "advcode"
  end

  test do
    assert_match "advcode", shell_output("#{bin}/advcode --help")
  end
end
