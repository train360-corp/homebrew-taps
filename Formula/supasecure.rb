# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supasecure < Formula
  desc "CLI for interacting with a Supasecure instance."
  homepage "https://github.com/train360-corp/supasecure"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/train360-corp/supasecure/releases/download/v1.6.0/supasecure_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "aab071fc62aa3f92f8152ca50d0aaafa48d5208ea11df985ba633f87e5f9c760"

      def install
        bin.install "supasecure"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/train360-corp/supasecure/releases/download/v1.6.0/supasecure_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "9ccc8e27b49ca75c4f5ebc299c8b77f8fc9c4f1329baa8416e49c385338b293d"

      def install
        bin.install "supasecure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v1.6.0/supasecure_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "d05b542d811b802fba0ebd2a67a9fad8ae8b77d9a8b130adb3a5d27cfdec767f"

        def install
          bin.install "supasecure"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v1.6.0/supasecure_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "5e46d293ef4334d27ef21c89fb56ce5fd26cde1d9502648085a2d243799f01f5"

        def install
          bin.install "supasecure"
        end
      end
    end
  end

  def caveats
    <<~EOS
      supasecure --help
    EOS
  end

  test do
    system "#{bin}/supasecure --version"
  end
end
