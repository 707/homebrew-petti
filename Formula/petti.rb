class Petti < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/707/petti"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_darwin_arm64.tar.gz"
      sha256 "ea40875b4bf2ce764bbc9fc9f7b1a5cf8f67aeb3daa34c7520a06467e82f450f"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_darwin_amd64.tar.gz"
      sha256 "bed0d51dc4e286ea7e61c5a52fd58f1dfa25ea61ebc13aec0631a77aa0594b43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_linux_arm64.tar.gz"
      sha256 "019eaa00fb27f7f35d9dc0b71b27dd37a33e9163f97b276b1485dca4471f38ca"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_linux_amd64.tar.gz"
      sha256 "d2c55fd61ce8345f2f2ac3adf1750425c1aa6d1d43b1d58fea8fb74db3fe0925"
    end
  end

  def install
    bin.install "petti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/petti --version")
  end
end
