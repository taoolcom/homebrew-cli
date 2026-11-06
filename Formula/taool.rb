class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.6/taool-1.1.6-macos.zip"
  sha256 "033c75b1e9ba0ccac3c33dab61ea5e9ac9d95123ac32fd7910813d3fcfcf6a59"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
