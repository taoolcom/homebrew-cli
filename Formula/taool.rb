class Taool < Formula
  desc "Your App Store apps from the terminal, with the key taool holds"
  homepage "https://taool.com/cli/"
  url "https://cdn.taool.com/cli/1.1.3/taool-1.1.3-macos.zip"
  sha256 "453bc85210854d3f037604f64bec9b6d4fd176859897825c820fba8890aa12c5"
  depends_on macos: :sonoma

  def install
    bin.install "taool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taool --version")
  end
end
