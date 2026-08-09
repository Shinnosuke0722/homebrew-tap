class Jm < Formula
  desc "Cross-platform JDK and Java version manager"
  homepage "https://github.com/Shinnosuke0722/jm"
  license any_of: ["MIT", "Apache-2.0"]
  version "1.0.2"

  on_macos do
    url "https://github.com/Shinnosuke0722/jm/releases/download/v#{version}/jm-macos-universal.tar.gz"
    sha256 "fad15c81c7c6d2c70b464bf0f7a210c98845a32cf199b78869f7a507f6420115"
  end

  on_linux do
    on_intel do
      url "https://github.com/Shinnosuke0722/jm/releases/download/v#{version}/jm-linux-x86_64.tar.gz"
      sha256 "ebb0f3952584176ce00ae4702b61c3f41527057fcf7adab52594f1e325b7c550"
    end
    on_arm do
      url "https://github.com/Shinnosuke0722/jm/releases/download/v#{version}/jm-linux-aarch64.tar.gz"
      sha256 "9bc51bc7400519b06e1a787de96bfbeba4ecfa3b56617cb99ea96c9280eaa078"
    end
  end

  def install
    bin.install "jm"
  end

  def caveats
    <<~EOS
      To enable shell integration, add to your shell config:

        # Bash (~/.bashrc)
        eval "$(jm shell init bash)"

        # Zsh (~/.zshrc)
        eval "$(jm shell init zsh)"

        # Fish (~/.config/fish/config.fish)
        jm shell init fish | source

      Update this Homebrew-managed installation with:

        brew upgrade Shinnosuke0722/tap/jm

      Do not run `jm upgrade` for a Homebrew-managed installation.
    EOS
  end

  test do
    assert_match "jm #{version}", shell_output("#{bin}/jm --version")
    assert_match "JDK version manager", shell_output("#{bin}/jm --help")
  end
end
