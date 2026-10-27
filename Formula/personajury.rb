# Updated by .github/workflows/update.yml from the latest PersonaJury release; do not edit the url, sha256 or version by hand.
class Personajury < Formula
  desc "Run a jury of AI personas on your work; the engine calls no model"
  homepage "https://github.com/MassRelayAI/personajury"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MassRelayAI/personajury/releases/download/v0.6.1/personajury-darwin-arm64"
      sha256 "4b556493145011fc51e0c604ffb60c5421509567c4bc18bc58f224589f8c281a"
    end
    on_intel do
      url "https://github.com/MassRelayAI/personajury/releases/download/v0.6.1/personajury-darwin-x64"
      sha256 "6df4b8e266289a4eae3b8b0c9b3059acbef8ed854ae4e34e78cdcc4ae9dc552c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MassRelayAI/personajury/releases/download/v0.6.1/personajury-linux-arm64"
      sha256 "30e2a84200cb14a00c220c95aec307ae64acb6c71ecaec538af3afff8ab798ea"
    end
    on_intel do
      url "https://github.com/MassRelayAI/personajury/releases/download/v0.6.1/personajury-linux-x64"
      sha256 "29c0a2f45a9beaa04aebde89e61b464586e0dce0fe752ff4126f0ab18aa85c2e"
    end
  end

  def install
    bin.install Dir["personajury-*"].first => "personajury"
  end

  test do
    system bin/"personajury", "--version"
  end
end
