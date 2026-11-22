cask "utter" do
  version "0.1.3"
  sha256 "edc3747c27819df2e98a59c8c4a48a24b054b716f574288a143fe6974f7be7b8"

  url "https://github.com/leonardogavaudan/utter/releases/download/v#{version}/Utter_#{version}_universal.dmg"
  name "Utter"
  desc "Context-aware voice typing with your own API keys"
  homepage "https://github.com/leonardogavaudan/utter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Utter.app"

  zap trash: [
    "~/Library/Application Support/dev.utter.desktop",
    "~/Library/Caches/dev.utter.desktop",
    "~/Library/Logs/dev.utter.desktop",
    "~/Library/WebKit/dev.utter.desktop",
  ]
end
