class Advcode < Formula
  desc "advcode - the AI coding agent that learns from experience"
  homepage "https://github.com/goldenswordgt-ctrl/advcode"
  url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.3.2/advcode-darwin-arm64.tar.gz"
  sha256 "994f56eac3e4712a208f4447323ea83fd3a95eb53ded3b7291a38c7257d45d86"
  license "MIT"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.3.2/advcode-darwin-arm64.tar.gz"
      sha256 "994f56eac3e4712a208f4447323ea83fd3a95eb53ded3b7291a38c7257d45d86"
    end
  end

  def install
    bin.install "advcode"
  end

  test do
    assert_match "advcode", shell_output("#{bin}/advcode --help")
  end
end
