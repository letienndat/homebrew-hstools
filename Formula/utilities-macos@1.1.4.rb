class UtilitiesMacos < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "955ae00876bf2fd3615351a1569f79675d5094cd65792b725139d4208267f827"
  license "MIT"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      ✅ Requirement: Hammerspoon must be installed.
          brew install --cask hammerspoon

      🛠 After installation, run the following command to finish setup:
          bash $(brew --cellar #{name})/#{version}/install.sh

      This script will copy required files to: ~/.hammerspoon
    EOS
  end
end
