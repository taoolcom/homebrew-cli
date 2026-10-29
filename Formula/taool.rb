class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.5/taool-1.0.5-macos.zip"
  sha256 "4edd3d2027f0c676719f53457eef0f1eb327e872dd3b0f9730808ae034618b61"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
