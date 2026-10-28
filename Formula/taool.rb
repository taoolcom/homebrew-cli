class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.2/taool-1.0.2-macos.zip"
  sha256 "7a00d2afc3e7797a235d7173ade5a07b0e566155bd6d2263a70a95b96959ced1"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
