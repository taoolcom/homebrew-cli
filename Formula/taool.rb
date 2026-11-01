class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.2/taool-1.1.2-macos.zip"
  sha256 "a2dc6a02886bfd3fb80c51cd78e5a0003d1b9839fc1dd7dd473751ead18551dd"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
