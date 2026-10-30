class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.9/taool-1.0.9-macos.zip"
  sha256 "3d3af3d39a55f3c28e5bbb3e13a29f1cddd8231952d030b870a7ec887ab9616e"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
