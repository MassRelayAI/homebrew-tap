# Updated by .github/workflows/update.yml from the latest CompareGraph release; do not edit the url, sha256 or version by hand.
class Comparegraph < Formula
  desc "Compare many cloned repositories against taxonomy packs: one code graph, cited claims, a matrix"
  homepage "https://github.com/massrelay-ai/comparegraph"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.1.0/comparegraph-darwin-arm64"
      sha256 "e0e512c4d90f14c6f1daa1f1e2b7f39c053dd84d7336ef538c01ba6bc6001a6e"
    end
    on_intel do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.1.0/comparegraph-darwin-x64"
      sha256 "3c19415eb6c7ace80f31cd23b20a6559c632047bbe9cbd61f22ee00256ddcb3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.1.0/comparegraph-linux-arm64"
      sha256 "c8d582b720f57b4b71dcae17c13eeb7779d2397920c128caf6ca7b9419d91e94"
    end
    on_intel do
      url "https://github.com/massrelay-ai/comparegraph/releases/download/v0.1.0/comparegraph-linux-x64"
      sha256 "5bca6c05c6f328feb9b34b19805ba672d598b13eb71ef762bdc5273e34e9900b"
    end
  end

  def install
    bin.install Dir["comparegraph-*"].first => "comparegraph"
  end

  test do
    system "#{bin}/comparegraph", "--version"
  end
end
