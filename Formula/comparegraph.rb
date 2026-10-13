# Updated by .github/workflows/update.yml from the latest CompareGraph release; do not edit the url, sha256 or version by hand.
class Comparegraph < Formula
  desc "Compare many cloned repositories against taxonomy packs: one code graph, cited claims, a matrix"
  homepage "https://github.com/massrelay-ai/comparegraph"
  license "Apache-2.0"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.0.0/comparegraph-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.0.0/comparegraph-darwin-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.0.0/comparegraph-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.0.0/comparegraph-linux-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["comparegraph-*"].first => "comparegraph"
  end

  test do
    system "#{bin}/comparegraph", "--version"
  end
end
