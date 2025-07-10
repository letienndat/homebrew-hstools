class UtilitiesMacosAT113 < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "57043328d91df1df06eb129b25821c08edbc8b30ea2e7e911014b19d739d5ce1"
  license "MIT"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      ✅ Requirement: Hammerspoon must be installed.
          brew install --cask hammerspoon

      ➡️ After installation, please run the following command to finish setup:
          bash $(brew --cellar #{name})/#{version}/install.sh

      This script will copy required files to: ~/.hammerspoon
    EOS
  end
end
