class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.8/taool-1.0.8-macos.zip"
  sha256 "2c0e89b43aba0acbd3eb220af1a5e670908816af585837a097316b0ee33a9b68"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
