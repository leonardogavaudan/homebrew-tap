cask "utter" do
  version "0.1.1"
  sha256 "510a4d1ee053e118c72c41cb1e6aeed5eedf6a7139bfa6e82832525499f3f446"

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
