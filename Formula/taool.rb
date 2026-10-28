class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.1/taool-1.0.1-macos.zip"
  sha256 "149e7560a5b7dda747aefafa7625f1950adec2c0298e99d2186c41e7e77e08e5"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
