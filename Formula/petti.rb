class Petti < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/707/petti"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_0.6.5_darwin_arm64.tar.gz"
      sha256 "6d17544fc8283f6b6d79d1fc67c141442fd11f889b5caf0229600b3f5ecfa6a1"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_0.6.5_darwin_amd64.tar.gz"
      sha256 "f9f765b559c42fd1fd62a9c619a597be5e3bb2843b6339cd3c2bf663aa24a64d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_0.6.5_linux_arm64.tar.gz"
      sha256 "6798cd64b0ff09bb50561af5dc64e6796d2116c66586ec722f90745bb1d097a1"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_0.6.5_linux_amd64.tar.gz"
      sha256 "c3a42f8df93c03a7ef7402bcb833c540c1e60d096ee9fd04b31baa5ac2525350"
    end
  end

  def install
    bin.install "petti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/petti --version")
  end
end
