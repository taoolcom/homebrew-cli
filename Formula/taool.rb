class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.0.0/taool-1.0.0-macos.zip"
  sha256 "900401d41aaf25bbb1f15a50bc739aa7e9bae00db343baac90117349d5aefd46"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
