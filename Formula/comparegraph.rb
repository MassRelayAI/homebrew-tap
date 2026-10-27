# Updated by .github/workflows/update.yml from the latest CompareGraph release; do not edit the url, sha256 or version by hand.
class Comparegraph < Formula
  desc "Compare cloned repositories against taxonomy packs with one code graph"
  homepage "https://github.com/MassRelayAI/comparegraph"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.2/comparegraph-darwin-arm64"
      sha256 "b41a40475fb68bff2e7ea174226c855d0a05b788e58bb0901e0917d3ccef6816"
    end
    on_intel do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.2/comparegraph-darwin-x64"
      sha256 "db133594707644abfcce8855833c73d905f59ab2cbeeb470b7f7a08118b1289a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.2/comparegraph-linux-arm64"
      sha256 "d541cd4fc9dd0151eaa0784172e0bc6d7bf623d8f413dc471ce328db2e03773b"
    end
    on_intel do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.2/comparegraph-linux-x64"
      sha256 "b1ef6f022ce2bf19c5c4a364a89ce2b785fa5ec6db22f94fec05e68988d94006"
    end
  end

  def install
    bin.install Dir["comparegraph-*"].first => "comparegraph"
  end

  test do
    system bin/"comparegraph", "--version"
  end
end
