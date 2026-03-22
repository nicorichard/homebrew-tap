class Freespace < Formula
  desc "TUI application for browsing and cleaning disk space consumers"
  homepage "https://github.com/nicorichard/freespace"
  version "0.0.2"

  depends_on :macos

  url "https://github.com/nicorichard/freespace/releases/download/v#{version}/freespace-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "PLACEHOLDER"

  def install
    bin.install "freespace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freespace --version")
  end
end
