class ClaudeCli < Formula
  desc "Simple CLI application for communicating with the Anthropic Claude API"
  homepage "https://github.com/MikeshCZ/claude-cli"
  url "https://github.com/MikeshCZ/claude-cli/releases/download/v1.2.0/v1.2.0.tar.gz"
  sha256 "d992728f6aeba846d2a48ce087404db6e5681041774d6149b99347326e0bafcd"

  uses_from_macos "curl"
  depends_on "jq"

  def install
    bin.install "claude-cli"
  end

  def caveats
    <<~EOS
      To use claude-cli, you need to:
      1. Get an API key from https://console.anthropic.com/
      2. Set the API key: claude-cli -k YOUR_API_KEY

      Optional dependency for better formatting:
        brew install glow
    EOS
  end

  test do
    assert_match "Claude-CLI", shell_output("#{bin}/claude-cli -v")
  end
end
