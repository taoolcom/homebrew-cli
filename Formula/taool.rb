class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.4/taool-1.1.4-macos.zip"
  sha256 "361b7f1601f2da5a2541970d35470f274d3f61b6c7736c29888af7f4f94d88e1"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
