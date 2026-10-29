class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.7/taool-1.0.7-macos.zip"
  sha256 "11dccd9068fbf4d983914c2d06d209369c24020696627a87dadaba3380ed4b87"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
