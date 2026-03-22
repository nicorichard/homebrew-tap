class Freespace < Formula
  desc "TUI application for browsing and cleaning disk space consumers"
  homepage "https://github.com/nicorichard/freespace"
  version "0.0.3"

  depends_on :macos

  url "https://github.com/nicorichard/freespace/releases/download/v#{version}/freespace-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "e681e3ea8157b57a51d310e124d35a1ae8c89726ae0a076f1bc6c2e3155435fd"

  def install
    bin.install "freespace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/freespace --version")
  end
end
