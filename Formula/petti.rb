class Petti < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/707/petti"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_darwin_arm64.tar.gz"
      sha256 "ad32eee23338602d625fdf32e8f433463da09864f9cb1edd6264d9a89cf7930a"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_darwin_amd64.tar.gz"
      sha256 "9f2245704486120a67c605972bb204e660692bb2efd56eeff0d8a0dee6f2021c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_linux_arm64.tar.gz"
      sha256 "963d1636942050c2c039b67c3fa06c87b5bf3af2c614a0c9abc97171c938ff32"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_linux_amd64.tar.gz"
      sha256 "4cc999be9f4d6093233885d5357d6bf92cc24330a46f22c1560a6f32ffcffbfb"
    end
  end

  def install
    bin.install "petti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/petti --version")
  end
end
