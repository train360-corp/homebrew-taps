# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supasecure < Formula
  desc "CLI for interacting with a Supasecure instance."
  homepage "https://github.com/train360-corp/supasecure"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/train360-corp/supasecure/releases/download/v2.1.1/supasecure_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "94bc86f773cd91f5a704aaf5d45b327de939c308945040b08df2f5cf9bf55bda"

      def install
        bin.install "supasecure"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/train360-corp/supasecure/releases/download/v2.1.1/supasecure_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "17237097f4d49db1a29865b1d4b98ab719af9e1b2b6ac9a07b0b0e1fadd37fd7"

      def install
        bin.install "supasecure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v2.1.1/supasecure_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "6bb13b4cc65deab8101bebe76c3de4f506f974987b4de8316a70f1a339439c0a"

        def install
          bin.install "supasecure"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/supasecure/releases/download/v2.1.1/supasecure_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "42430b79a9ddc114dde161c7872c282241fadcb576493beb820d938b7ab3a7e9"

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
