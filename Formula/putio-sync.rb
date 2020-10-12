# This file was generated by GoReleaser. DO NOT EDIT.
class PutioSync < Formula
  desc "Put.io folder sync app"
  homepage "https://github.com/putdotio/putio-sync"
  version "2.0.42"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/putdotio/putio-sync/releases/download/v2.0.42/putio-sync_2.0.42_macos_x86_64.tar.gz"
    sha256 "0f7681ffadc4b92e0bfc1a6ed3aabaef1719b201462b0ef2caef2d8b85c67607"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/putdotio/putio-sync/releases/download/v2.0.42/putio-sync_2.0.42_linux_x86_64.tar.gz"
      sha256 "5ca803662e0087f1c338caab5f03263392a70380d1c809e6901c6f38d6ea32fb"
    end
  end

  def install
    bin.install "putio-sync"
  end

  test do
    system "#{bin}/putio-sync -version"
  end
end
