# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformExporter < Formula
  desc "Export artifacts to terraform files"
  homepage "https://github.com/gideaworx/terraform-exporter"
  version "0.1.3"
  license "MIT"

  depends_on "nodejs" => :optional
  depends_on "openjdk@17" => :optional
  depends_on "python3" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gideaworx/terraform-exporter/releases/download/v0.1.3/terraform-exporter_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "282a0738c78712ef41b68f1a1867b4bd591844207217d28961dcc929d09fbec8"

      def install
        bin.install "terraform-exporter"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gideaworx/terraform-exporter/releases/download/v0.1.3/terraform-exporter_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "0b75217067cb8d7ea9a22ca0a7772ab1ddf8ad9319b9b480082344d84640d076"

      def install
        bin.install "terraform-exporter"
        prefix.install "LICENSE"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gideaworx/terraform-exporter/releases/download/v0.1.3/terraform-exporter_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "369850b1dd954a1422da4e4c378ad882386ed1a45f27c8249dc7bd5767a53b6a"

      def install
        bin.install "terraform-exporter"
        prefix.install "LICENSE"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gideaworx/terraform-exporter/releases/download/v0.1.3/terraform-exporter_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f30e1c2a8ded1637873c9863b5b597a6b82ccb8ea3d5ca3933804b8eff00f187"

      def install
        bin.install "terraform-exporter"
        prefix.install "LICENSE"
      end
    end
  end

  test do
    system "#{bin}/terraform-exporter", "--version"
  end
end
