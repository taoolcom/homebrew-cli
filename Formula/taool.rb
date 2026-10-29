class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.6/taool-1.0.6-macos.zip"
  sha256 "9b1a6a33e3d5d4573bd152de77c6acdb5d67ea1a5b13af1f8d893c4eb9f2a658"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
