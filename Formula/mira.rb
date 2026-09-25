# Homebrew formula for Mira.
#
# This file is the source of truth — copy it into the runmira/homebrew-tap
# repository (Formula/mira.rb) so users can:
#
#   brew install runmira/tap/mira
#
# The release workflow updates url/sha256 for each new tag.
class Mira < Formula
  desc "Open-source coding agent you run yourself, with the model you choose"
  homepage "https://github.com/runmira/mira"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-darwin-arm64.tar.gz"
      sha256 "3aac90a9d8e3fdef3e94dfd633320d5ec25b03b276f5846ed24b85e6a7070869"
    end

    on_intel do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-darwin-x86_64.tar.gz"
      sha256 "cbaea2cffdc14ceb1913a728b1db9b7322a51b39d62bb4b14a6e2b6da3953aea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-linux-arm64.tar.gz"
      sha256 "f20a48375cb48171091c4a57936f72d6d388e4912685b118d685e50bc3df78f5"
    end

    on_intel do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-linux-x86_64.tar.gz"
      sha256 "2f7317f334afc0fe305c63de13c6a6574154ac0af256fd258eb8ad35f339d895"
    end
  end

  def install
    bin.install "mira"
  end

  test do
    assert_match "mira", shell_output("#{bin}/mira --version")
  end
end
