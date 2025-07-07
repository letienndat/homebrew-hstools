class UtilitiesMacos < Formula
  desc "My Lua-based Hammerspoon utilities"
  homepage "https://github.com/letienndat/utilities-macos"
  url "https://github.com/letienndat/utilities-macos/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  depends_on "hammerspoon" => :cask

  def install
    (buildpath/"install.sh").chmod 0755
    system "./install.sh", prefix
  end

  def caveats
    <<~EOS
      Installed config to ~/.hammerspoon
      Ensure Hammerspoon is opened and granted accessibility permissions
    EOS
  end
end
