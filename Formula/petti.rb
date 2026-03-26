class Petti < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/707/petti"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_darwin_arm64.tar.gz"
      sha256 "e5c56c4db4381a42629761f7ac650ef681a5cb851158ce1c76de8a8c82394179"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_darwin_amd64.tar.gz"
      sha256 "647939e01f0c4c3ce06f7e16408365541ab0bc03a971139ffce2788e01409605"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_linux_arm64.tar.gz"
      sha256 "4f500a7af354d0949d4f6e9fc49be0952d1dce056ad73dbf2d8749d0c9dcfbca"
    else
      url "https://github.com/707/petti/releases/download/v#{version}/petti_#{version}_linux_amd64.tar.gz"
      sha256 "e28a6feb948c5bd390f5c1ed331f1439370dbb5e0042fcf89173f4216073bef1"
    end
  end

  def install
    bin.install "petti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/petti --version")
  end
end
