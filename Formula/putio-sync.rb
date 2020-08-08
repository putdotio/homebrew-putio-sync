# This file was generated by GoReleaser. DO NOT EDIT.
class PutioSync < Formula
  desc "Put.io folder sync app"
  homepage "https://github.com/putdotio/putio-sync"
  version "2.0.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/putdotio/putio-sync/releases/download/v2.0.4/putio-sync_2.0.4_macos.tar.gz"
    sha256 "824a7ee6bf5a527d31b4e7c6ee87e9acbd27393f73f92539ca7d89df5e409f65"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/putdotio/putio-sync/releases/download/v2.0.4/putio-sync_2.0.4_linux.tar.gz"
      sha256 "6c109fdc4868aa333be8bf63752b3d05bdb2c26543b4d6c6edbc502c3869e9fe"
    end
  end

  def install
    bin.install "putio-sync"
  end

  test do
    system "#{bin}/putio-sync -version"
  end
end
