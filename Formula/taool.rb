class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.1/taool-1.1.1-macos.zip"
  sha256 "9a8a0e633bc1bccdcde47491295c18f5a3c217bedebf2ca45fe6d77c38fc876f"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
