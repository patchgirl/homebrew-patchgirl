class Runner < Formula
  VERSION="2.2.0"
  BIN="patchgirl-runner-#{VERSION}-macOS"
  SHA256="cba002deedc7c62d3e5b2643ae0852d846fb342e25618325e1e5bae5bc33e522"

  desc "patchgirl-runner is a tiny proxy that execute your patchgirl queries from your laptop"
  homepage "https://github.com/patchgirl/patchgirl"
  url "https://github.com/patchgirl/patchgirl/releases/download/v#{VERSION}/#{BIN}"
  sha256 SHA256

  bottle :unneeded # binary doesnt need compilation

  def install
    bin.install BIN
    mv "#{bin}/#{BIN}", "#{bin}/patchgirl-runner"
  end

  test do
  end
end
