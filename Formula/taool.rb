class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.0/taool-1.1.0-macos.zip"
  sha256 "32fd43f3576695796659f35627e50a16f2eb7d34f4afae945ffe2e77f3374a57"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
