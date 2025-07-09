class UtilitiesMacosAT110 < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "200335557d18e39bed7551d518d3e9e118381468f0ad7b5d343f524b58b936ae"
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
