class UtilitiesMacos < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.0.19.tar.gz"
  sha256 "c0d0913016ff60e458acb398520d2263c19170a8d0a7833bf1ad352232457e8b"
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
