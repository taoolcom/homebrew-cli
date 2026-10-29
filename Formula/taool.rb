class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.4/taool-1.0.4-macos.zip"
  sha256 "1fc76f0a8020c7b9738ff7f6d96b41873454c0cf8e94d4e1c69b7c0d18ceef48"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
