class Freespace < Formula
  desc "TUI application for browsing and cleaning disk space consumers"
  homepage "https://github.com/nicorichard/freespace"
  version "0.0.5"

  depends_on :macos

  url "https://github.com/nicorichard/freespace/releases/download/v#{version}/freespace-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "659dceba09059358029b55b5a61d002ce9a9f6b46990845a9b7c5074c2cf7af8"

  def install
    bin.install "freespace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freespace --version")
  end
end
