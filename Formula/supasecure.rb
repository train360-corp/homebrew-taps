# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supasecure < Formula
  desc "CLI for interacting with a Supasecure instance."
  homepage "https://github.com/train360-corp/supasecure"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/train360-corp/supasecure/releases/download/v1.8.0/supasecure_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "9499b461e4b7fd387905b9acd92f43e058c529cc6d3f81cb3784e88488bb62fb"

      def install
        bin.install "supasecure"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/train360-corp/supasecure/releases/download/v1.8.0/supasecure_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "bcad2398f0c8aed029c354991190f81b47790959b35f946873874fa318acfbd2"

      def install
        bin.install "supasecure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v1.8.0/supasecure_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "798840c670c6a14f41b92daa04284e1de430e2cfdb9b7893056d05a7ead273a0"

        def install
          bin.install "supasecure"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v1.8.0/supasecure_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "c2e21c3f561c5383a60d650d28642de01e83e9d903ffac3bff66e95de99e936b"

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
