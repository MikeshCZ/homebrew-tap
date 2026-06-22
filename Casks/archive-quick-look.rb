cask "archive-quick-look" do
  version "1.2.0"
  sha256 "b00ca9bc46f09013674efcce285bf14ac0a68dc49c5506a2a365f558f7acd04a"

  url "https://github.com/MikeshCZ/ArchiveQuickLook/releases/download/#{version.major_minor}/ArchiveQuickLook-#{version}-macos-arm64.dmg"
  name "Archive Quick Look"
  desc "macOS QuickLook extension for previewing archive file contents in Finder"
  homepage "https://github.com/MikeshCZ/ArchiveQuickLook"

  depends_on macos: ">= :ventura"

  app "ArchiveQuickLook.app"

  caveats <<~EOS
    After installation, open Archive Quick Look once to activate the QuickLook extension:
      open /Applications/ArchiveQuickLook.app
  EOS
end
