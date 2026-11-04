class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.5/taool-1.1.5-macos.zip"
  sha256 "1d9cce870088f5c1baed21eea596ed2cd52871825a86ed60c36a7ad85d19386b"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
