cask "utter" do
  version "0.1.4"
  sha256 "03d691bb33cde2aeb28bd6f7d48cc8b4d3c0c1b455174f8f12c52d4b96078ee4"

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
