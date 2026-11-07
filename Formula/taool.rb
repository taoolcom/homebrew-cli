class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.7/taool-1.1.7-macos.zip"
  sha256 "41ac1619a25f3f51490e0a88bdbd93a142e665a2b199e828287460874ce6b0f8"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
