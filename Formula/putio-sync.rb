# This file was generated by GoReleaser. DO NOT EDIT.
class PutioSync < Formula
  desc "Put.io folder sync app"
  homepage "https://github.com/putdotio/putio-sync"
  version "2.0.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/putdotio/putio-sync/releases/download/v2.0.20/putio-sync_2.0.20_macos_x86_64.tar.gz"
    sha256 "74cb19e768b5e1cb6e93d516f485e6cb2c01f2ca577a6a367defbf27ddbf5315"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/putdotio/putio-sync/releases/download/v2.0.20/putio-sync_2.0.20_linux_x86_64.tar.gz"
      sha256 "6ef8a36e04aeb5e006f7293d040edea67f265cf167a43f0279e979970606c733"
    end
  end

  def install
    bin.install "putio-sync"
  end

  test do
    system "#{bin}/putio-sync -version"
  end
end
