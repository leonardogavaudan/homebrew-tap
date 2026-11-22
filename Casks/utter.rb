cask "utter" do
  version "0.1.0"
  sha256 "0672262a55ef3d0f9ba00f2e68b762708afa4d5538bbe6a8b9413e2ebde2bab8"

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
