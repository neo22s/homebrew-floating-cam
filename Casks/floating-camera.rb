cask "floating-camera" do
  version "1.1.0"
  sha256 "42f94d7dcf9f1cec72dc25322e7ca55a72916b0118b06c36a3b38a35765eaada"

  url "https://github.com/neo22s/floating-cam/releases/download/v#{version}/FloatingCamera.zip"
  name "Floating Camera"
  desc "Menu bar app that keeps your camera floating above everything else"
  homepage "https://github.com/neo22s/floating-cam"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "FloatingCamera.app"

  postflight_steps do
    # The release is ad-hoc signed, so Gatekeeper refuses the first launch while
    # the quarantine flag is set. The app does the same on its own updates.
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/FloatingCamera.app"]
  end

  zap trash: "~/Library/Preferences/com.floatingcamera.app.plist"
end
