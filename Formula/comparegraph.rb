# Updated by .github/workflows/update.yml from the latest CompareGraph release; do not edit the url, sha256 or version by hand.
class Comparegraph < Formula
  desc "Compare cloned repositories against taxonomy packs with one code graph"
  homepage "https://github.com/MassRelayAI/comparegraph"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.1/comparegraph-darwin-arm64"
      sha256 "e7021aa32cff8022e115f8421dfdb0ab59aa02393e84bbda7cacb240b7b192fc"
    end
    on_intel do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.1/comparegraph-darwin-x64"
      sha256 "e91c70071645adc4dfe8bf4645e3b2e688286498619e28884caf2594bf6d2616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.1/comparegraph-linux-arm64"
      sha256 "d82a04a38f5724acb520a012035204438e493dfd710da31237aa27c89c501492"
    end
    on_intel do
      url "https://github.com/MassRelayAI/comparegraph/releases/download/v0.1.1/comparegraph-linux-x64"
      sha256 "a1cfff62359da814ec52c4028147efef5e799b1982df9f53a713fe757d5adc61"
    end
  end

  def install
    bin.install Dir["comparegraph-*"].first => "comparegraph"
  end

  test do
    system bin/"comparegraph", "--version"
  end
end
