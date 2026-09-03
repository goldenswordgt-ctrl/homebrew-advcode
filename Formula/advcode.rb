class Advcode < Formula
  desc "advcode - the AI coding agent that learns from experience"
  homepage "https://github.com/goldenswordgt-ctrl/advcode"
  url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.3.0/advcode-darwin-arm64.tar.gz"
  sha256 "e61d90437263c4c38d98d615d8db3a060ed7f4c19c8ba083f32716bb55b76355"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/goldenswordgt-ctrl/advcode/releases/download/v0.3.0/advcode-darwin-arm64.tar.gz"
      sha256 "e61d90437263c4c38d98d615d8db3a060ed7f4c19c8ba083f32716bb55b76355"
    end
  end

  def install
    bin.install "advcode"
  end

  test do
    assert_match "advcode", shell_output("#{bin}/advcode --help")
  end
end
