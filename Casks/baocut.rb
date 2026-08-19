cask "baocut" do
  version "1.1.0,47"
  sha256 "8260874d366e5d5fe521ae3f60f12df89b90435e391f61ed5bbd557f6881aaf2"

  url "https://github.com/JimLiu/baocut/releases/download/baocut-v#{version.csv.first}-build.#{version.csv.second}/bcut-#{version.csv.first}-build.#{version.csv.second}-aarch64-apple-darwin.zip"
  name "BaoCut CLI"
  desc "Local video, transcription, subtitle, and BCF rendering CLI"
  homepage "https://baocut.app/"

  livecheck do
    url "https://github.com/JimLiu/baocut/releases/latest/download/appcast.json"
    strategy :json do |json|
      "#{json["version"]},#{json["build"]}"
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  binary "bcut"

  zap trash: [
    "~/.cache/bcut",
    "~/Library/Application Support/BaoCut/.bcut-secrets.lock",
    "~/Library/Application Support/BaoCut/.jobs.json.lock",
    "~/Library/Application Support/BaoCut/config.json",
    "~/Library/Application Support/BaoCut/jobs.json",
    "~/Library/Application Support/BaoCut/key-masks.json",
    "~/Library/Application Support/BaoCut/secrets.json",
  ]
end
