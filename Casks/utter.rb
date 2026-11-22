cask "utter" do
  version "0.1.2"
  sha256 "802dcdcf68b4a4770a623a715a086a3045b334261a18ca94627edd7df8688456"

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
