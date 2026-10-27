# Updated by .github/workflows/update.yml from the latest CompareGraph release; do not edit the url, sha256 or version by hand.
class Comparegraph < Formula
  desc "Compare cloned repositories against taxonomy packs with one code graph"
  homepage "https://github.com/MassRelayAI/comparegraph"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.3/comparegraph-darwin-arm64"
      sha256 "1b30a8d82f5facbfac25921e395913167e5a1df9358c13b80a208c50ccce02e4"
    end
    on_intel do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.3/comparegraph-darwin-x64"
      sha256 "e4c67c6ecab411f5e9aaea682f14a68294ab01657f77334f8cb280406ab5bf48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.3/comparegraph-linux-arm64"
      sha256 "1e2888d399676548550bae821d634f3505fe23c1329143d40e9ee085311caa50"
    end
    on_intel do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.3/comparegraph-linux-x64"
      sha256 "cd33c31b2132d3d35db9561b07f092f6e53c85d65a4254903f799031e9acf147"
    end
  end

  def install
    bin.install Dir["comparegraph-*"].first => "comparegraph"
  end

  test do
    system bin/"comparegraph", "--version"
  end
end
