# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.106.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.106.0/terrabuild-0.106.0-darwin-x64.zip"
    sha256 "48a12e51b5038c8d4f35e829cf2ab5173b8ec3b298ab087f0572bf329a8a93e0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.106.0/terrabuild-0.106.0-darwin-arm64.zip"
    sha256 "d94bcb69491ba65e1bd00f902f9dcbf2dc60c57d7621e44c336e1a55af2d3f89"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.106.0/terrabuild-0.106.0-linux-x64.zip"
    sha256 "77592a2b9e7102e925514f4d638aa1692637c1635dc3a24eed830badbd1d8f75"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.106.0/terrabuild-0.106.0-linux-arm64.zip"
    sha256 "4a396466f904b810f17b782135a6d26203b79ed1d592495bfc9d0841fcd3c1e6"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
