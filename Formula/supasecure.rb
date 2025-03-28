# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supasecure < Formula
  desc "CLI for interacting with a Supasecure instance."
  homepage "https://github.com/train360-corp/supasecure"
  version "1.16.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/train360-corp/supasecure/releases/download/v1.16.5/supasecure_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "8e40c065ae179af24c0b926cbd8db75a1005a8dbead2c6189312ba5337825b83"

      def install
        bin.install "supasecure"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/train360-corp/supasecure/releases/download/v1.16.5/supasecure_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "188f673043fe4628c68732bfdc5edf0925e5aa32ca5f144374fa2941e6dd858f"

      def install
        bin.install "supasecure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v1.16.5/supasecure_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "c7923de1085f04ece9d9817335b7652effee1e2285cbfa5d0d12b6a1dbf20390"

        def install
          bin.install "supasecure"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v1.16.5/supasecure_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "8e849307565ed82cd37098ff7848bd88d54d5661c288afd2ccd165527818a634"

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
