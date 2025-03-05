# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supasecure < Formula
  desc "CLI for interacting with a Supasecure instance."
  homepage "https://github.com/train360-corp/homebrew-tap"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/train360-corp/homebrew-tap/releases/download/v0.2.8/supasecure_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "c42dfd89f5f319276e028775b060fe58aa6e3e3d6515d537eb43a547f894d036"

      def install
        bin.install "supasecure"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/train360-corp/homebrew-tap/releases/download/v0.2.8/supasecure_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "8c5653a73e96419eb60340c967eae6b993c3a3d9275df450fb39702be5834ba9"

      def install
        bin.install "supasecure"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/homebrew-tap/releases/download/v0.2.8/supasecure_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "f68e73e34b794e275812afbd17e864bfb5600ff994a183fe4b13cc7231888d1e"

        def install
          bin.install "supasecure"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/train360-corp/homebrew-tap/releases/download/v0.2.8/supasecure_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "8c4b8a057d1981101ea3f386be566e9806d6cbf00927329618ee55be438bde93"

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
    # ...
  end
end
