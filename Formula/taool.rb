class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.10/taool-1.0.10-macos.zip"
  sha256 "785ca832d96d81c2b60cde88f4e2f8109493ef05de0dad6621a1bf8952ddcd6a"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
