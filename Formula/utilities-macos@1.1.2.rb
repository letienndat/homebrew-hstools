class UtilitiesMacosAT112 < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "9865c1fc0339a1a11c075192080550523178064591ce38197d8402f558d03408"
  license "MIT"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      ✅ Requirement: Hammerspoon must be installed.
          brew install --cask hammerspoon

      🛠 After installation, run the following command to finish setup:
          bash $(brew --cellar utilities-macos)/$(brew list --versions utilities-macos | awk '{print $2}')/install.sh

      This script will copy required files to: ~/.hammerspoon
    EOS
  end
end
