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
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-darwin-arm64.tar.gz"
      sha256 "e8cff42232578528fc48c583d15f4b6380a5bc8f2f82b991a278aa022c6944e8"
    end

    on_intel do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-darwin-x86_64.tar.gz"
      sha256 "748ee3f31eb3b009c6bc0f25d34bc215576b0a17abd1909be802b57ed787c21c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-linux-arm64.tar.gz"
      sha256 "ed56dca1448ef28d6359dfc126fe8bcc183b2cec29b1112934df7272ddb99ecb"
    end

    on_intel do
      url "https://github.com/runmira/mira/releases/download/v#{version}/mira-linux-x86_64.tar.gz"
      sha256 "8ce6fac034499de73af23480500dade290cbde387fd622a653fbde681565e8c5"
    end
  end

  def install
    bin.install "mira"
  end

  test do
    assert_match "mira", shell_output("#{bin}/mira --version")
  end
end
