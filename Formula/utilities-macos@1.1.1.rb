class UtilitiesMacosAT111 < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "a0ebad3aa88074f758cde123cc97ef279daef0174d9a2baeb18f9c6c06a29dd3"
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
