# Updated by .github/workflows/update.yml from the latest PersonaJury release; do not edit the url, sha256 or version by hand.
class Personajury < Formula
  desc "Run a jury of AI personas on your work; the engine calls no model"
  homepage "https://github.com/massrelay-ai/personajury"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/massrelay-ai/personajury/releases/download/v0.6.0/personajury-darwin-arm64"
      sha256 "12cc4280954cada7fca58e5f33792e75f492d14343009b74c3b66d2d02873b36"
    end
    on_intel do
      url "https://github.com/massrelay-ai/personajury/releases/download/v0.6.0/personajury-darwin-x64"
      sha256 "1273cfd99b986d2c9dd5d84d9dabd009d369c3643e9305dbb6f906eaa9472cee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/massrelay-ai/personajury/releases/download/v0.6.0/personajury-linux-arm64"
      sha256 "a3edb9d928e39be8912e788391270e315985b9d751582fdb92bc26e51d7407b4"
    end
    on_intel do
      url "https://github.com/massrelay-ai/personajury/releases/download/v0.6.0/personajury-linux-x64"
      sha256 "8017d60f1c1a3494c927f66c7d8041f193440182c25f1e79746c8565adcfecf4"
    end
  end

  def install
    bin.install Dir["personajury-*"].first => "personajury"
  end

  test do
    system bin/"personajury", "--version"
  end
end
